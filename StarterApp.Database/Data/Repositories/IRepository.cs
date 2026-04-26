namespace StarterApp.Database.Repositories;

/// <summary>
/// Generic read/write repository for Entity Framework–backed entities (local database only).
/// </summary>
/// <typeparam name="TEntity">Entity type mapped in <see cref="StarterApp.Database.Data.AppDbContext"/>.</typeparam>
/// <typeparam name="TKey">Primary key type (e.g. <see cref="int"/>).</typeparam>
public interface IRepository<TEntity, TKey>
    where TEntity : class
{
    /// <summary>
    /// Returns the entity with the given key, or null if not found.
    /// </summary>
    Task<TEntity?> GetByIdAsync(TKey id, CancellationToken cancellationToken = default);

    /// <summary>
    /// Adds the entity and persists changes. The entity is updated with any database-generated values.
    /// </summary>
    Task<TEntity> AddAsync(TEntity entity, CancellationToken cancellationToken = default);

    /// <summary>
    /// Updates an existing entity by copying scalar/current values onto the tracked instance.
    /// </summary>
    /// <returns>The updated tracked entity, or null if no row with that key exists.</returns>
    Task<TEntity?> UpdateAsync(TEntity entity, CancellationToken cancellationToken = default);

    /// <summary>
    /// Deletes the entity with the given key.
    /// </summary>
    /// <returns>True if a row was deleted; false if the key was not found.</returns>
    Task<bool> RemoveAsync(TKey id, CancellationToken cancellationToken = default);

    /// <summary>
    /// Whether an entity with the given key exists.
    /// </summary>
    Task<bool> ExistsAsync(TKey id, CancellationToken cancellationToken = default);
}
