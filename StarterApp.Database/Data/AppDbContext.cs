using Microsoft.EntityFrameworkCore;

namespace StarterApp.Database.Data;

public class AppDbContext : GenericDbContext
{
    public AppDbContext()
    {
    }

    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    {
    }

    protected override string ConnectionName => "DevelopmentConnection";

    protected override bool UseConnectionStringEnvironmentOverride => true;

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        if (optionsBuilder.IsConfigured)
            return;

        // ASP.NET / GitHub Actions style (double underscore). Build & test workflows may set TestConnection.
        var testConn = Environment.GetEnvironmentVariable("ConnectionStrings__TestConnection");
        if (!string.IsNullOrWhiteSpace(testConn))
        {
            optionsBuilder.UseNpgsql(
                testConn,
                npgsql => npgsql.MigrationsAssembly("StarterApp.Migrations"));
            return;
        }

        var devConn = Environment.GetEnvironmentVariable("ConnectionStrings__DevelopmentConnection");
        if (!string.IsNullOrWhiteSpace(devConn))
        {
            optionsBuilder.UseNpgsql(
                devConn,
                npgsql => npgsql.MigrationsAssembly("StarterApp.Migrations"));
            return;
        }

        base.OnConfiguring(optionsBuilder);
    }
}
