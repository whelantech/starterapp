using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Fixtures;

/// <summary>
/// Shared in-memory <see cref="TestAppDbContext"/> for repository tests (no PostgreSQL; isolated from <see cref="AppDbContext"/> dev data).
/// </summary>
public sealed class DatabaseFixture : IDisposable
{
    public TestAppDbContext Context { get; }
    public string DatabaseName { get; }

    public DatabaseFixture()
    {
        DatabaseName = "RentalAppTests_" + Guid.NewGuid();
        var options = new DbContextOptionsBuilder<TestAppDbContext>()
            .UseInMemoryDatabase(DatabaseName)
            .Options;
        Context = new TestAppDbContext(options);
        Context.Database.EnsureCreated();
    }

    public ItemRepository CreateItemRepository() =>
        new ItemRepository(Context, new EfRepository<Category, int>(Context));

    public RentalRepository CreateRentalRepository() => new RentalRepository(Context);

    public EfRepository<Category, int> CreateCategoryEfRepository() => new EfRepository<Category, int>(Context);

    public void Dispose() => Context.Dispose();
}
