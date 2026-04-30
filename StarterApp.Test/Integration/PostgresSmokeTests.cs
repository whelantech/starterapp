using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;

namespace StarterApp.Test.Integration;

public sealed class PostgresSmokeTests
{
    [Fact]
    public async Task Postgres_migrates_and_connects_when_test_connection_configured()
    {
        var cs = Environment.GetEnvironmentVariable("ConnectionStrings__TestConnection");
        if (string.IsNullOrEmpty(cs))
        {
            if (Environment.GetEnvironmentVariable("GITHUB_ACTIONS") == "true")
                throw new InvalidOperationException("ConnectionStrings__TestConnection is required in CI.");
            return;
        }

        var options = new DbContextOptionsBuilder<AppDbContext>()
            .UseNpgsql(cs, o => o.MigrationsAssembly("StarterApp.Migrations"))
            .Options;

        await using var context = new AppDbContext(options);
        await context.Database.MigrateAsync();

        Assert.True(await context.Database.CanConnectAsync());
    }
}
