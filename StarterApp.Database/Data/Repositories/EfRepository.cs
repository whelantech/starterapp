using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;

namespace StarterApp.Database.Repositories;

/// <summary>
/// EF Core implementation of <see cref="IRepository{TEntity,TKey}"/> using <see cref="GenericDbContext"/>.
/// </summary>
public class EfRepository<TEntity, TKey> : IRepository<TEntity, TKey>
    where TEntity : class
{
    private readonly GenericDbContext _context;

    public EfRepository(GenericDbContext context)
    {
        _context = context;
    }

    /// <inheritdoc />
    public async Task<TEntity?> GetByIdAsync(TKey id, CancellationToken cancellationToken = default)
    {
        return await _context.Set<TEntity>()
            .FindAsync(new object?[] { id }, cancellationToken);
    }

    /// <inheritdoc />
    public async Task<TEntity> AddAsync(TEntity entity, CancellationToken cancellationToken = default)
    {
        await _context.Set<TEntity>().AddAsync(entity, cancellationToken);
        await _context.SaveChangesAsync(cancellationToken);
        return entity;
    }

    /// <inheritdoc />
    public async Task<TEntity?> UpdateAsync(TEntity entity, CancellationToken cancellationToken = default)
    {
        var set = _context.Set<TEntity>();
        var keyValue = GetKeyValue(entity);
        var existing = await set.FindAsync(new object?[] { keyValue }, cancellationToken);
        if (existing is null)
            return null;

        _context.Entry(existing).CurrentValues.SetValues(entity);
        await _context.SaveChangesAsync(cancellationToken);
        return existing;
    }

    /// <inheritdoc />
    public async Task<bool> RemoveAsync(TKey id, CancellationToken cancellationToken = default)
    {
        var set = _context.Set<TEntity>();
        var entity = await set.FindAsync(new object?[] { id }, cancellationToken);
        if (entity is null)
            return false;

        set.Remove(entity);
        await _context.SaveChangesAsync(cancellationToken);
        return true;
    }

    /// <inheritdoc />
    public Task<bool> ExistsAsync(TKey id, CancellationToken cancellationToken = default)
    {
        return _context.Set<TEntity>()
            .AnyAsync(e => EqualityComparer<TKey>.Default.Equals(EF.Property<TKey>(e, "Id"), id), cancellationToken);
    }

    private static object? GetKeyValue(TEntity entity)
    {
        var entry = typeof(TEntity).GetProperty("Id");
        return entry?.GetValue(entity);
    }
}
