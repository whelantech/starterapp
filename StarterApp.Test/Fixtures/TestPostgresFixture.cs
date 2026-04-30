using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace StarterApp.Test.Fixtures;

/// <summary>
/// Uses <see cref="TestAppDbContext"/> and the <c>TestConnection</c> entry in StarterApp.Database/appsettings.json
/// (embedded resource). Run tests with PostgreSQL available; unset <c>CONNECTION_STRING</c> unless it should
/// point at this same test database.
/// </summary>
public sealed class TestPostgresFixture : IDisposable
{
    public TestAppDbContext Context { get; }

    public TestPostgresFixture()
    {
        var overrideConn = Environment.GetEnvironmentVariable("TEST_DATABASE_CONNECTION");
        if (!string.IsNullOrWhiteSpace(overrideConn))
        {
            var options = new DbContextOptionsBuilder<TestAppDbContext>()
                .UseNpgsql(overrideConn, npgsql => npgsql.MigrationsAssembly("StarterApp.Migrations"))
                .Options;
            Context = new TestAppDbContext(options);
        }
        else
        {
            Context = new TestAppDbContext();
        }

        Context.Database.Migrate();
    }

    public ItemRepository CreateItemRepository() =>
        new(Context, new EfRepository<Category, int>(Context));

    public void Dispose() => Context.Dispose();
}
