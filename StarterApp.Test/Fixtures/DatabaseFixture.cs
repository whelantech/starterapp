using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace StarterApp.Test.Fixtures;

/// <summary>EF Core in-memory database for fast repository integration tests (no PostgreSQL).</summary>
public sealed class DatabaseFixture : IDisposable
{
    public AppDbContext Context { get; }

    public DatabaseFixture()
    {
        var options = new DbContextOptionsBuilder<AppDbContext>()
            .UseInMemoryDatabase($"TestDb_{Guid.NewGuid():N}")
            .Options;

        Context = new AppDbContext(options);
        Context.Database.EnsureCreated();
        SeedReferenceRows();
    }

    /// <summary>HasData from migrations seeds categories; add a user for FK tests when needed.</summary>
    private void SeedReferenceRows()
    {
        if (!Context.Users.Any())
        {
            Context.Users.Add(new User
            {
                Email = "fixture@test.local",
                FirstName = "Fix",
                LastName = "Ture",
                PasswordHash = "x",
                PasswordSalt = "y",
                CreatedAt = DateTime.UtcNow,
                UpdatedAt = DateTime.UtcNow,
                IsActive = true
            });
            Context.SaveChanges();
        }
    }

    public ItemRepository CreateItemRepository()
    {
        var categories = new EfRepository<Category, int>(Context);
        return new ItemRepository(Context, categories);
    }

    public void Dispose() => Context.Dispose();
}
