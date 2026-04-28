using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Fixtures;

/// <summary>
/// Shared in-memory <see cref="AppDbContext"/> for integration-style repository tests
/// (model seeding from <see cref="AppDbContext"/> includes default categories; no PostgreSQL).
/// </summary>
public sealed class DatabaseFixture : IDisposable
{
    public AppDbContext Context { get; }
    public string DatabaseName { get; }

    public DatabaseFixture()
    {
        DatabaseName = "RentalAppTests_" + Guid.NewGuid();
        var options = new DbContextOptionsBuilder<AppDbContext>()
            .UseInMemoryDatabase(DatabaseName)
            .Options;
        Context = new AppDbContext(options);
        Context.Database.EnsureCreated();
    }

    public ItemRepository CreateItemRepository() =>
        new ItemRepository(Context, new EfRepository<Category, int>(Context));

    public RentalRepository CreateRentalRepository() => new RentalRepository(Context);

    public EfRepository<Category, int> CreateCategoryEfRepository() => new EfRepository<Category, int>(Context);

    public void Dispose() => Context.Dispose();
}
