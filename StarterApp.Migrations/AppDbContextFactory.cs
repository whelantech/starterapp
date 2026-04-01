using Microsoft.EntityFrameworkCore.Design;
using StarterApp.Database.Data;

namespace StarterApp.Migrations;

/// <summary>
/// Lets <c>dotnet ef</c> create <see cref="AppDbContext"/> at design time (migrations project has no DbContext type).
/// </summary>
public class AppDbContextFactory : IDesignTimeDbContextFactory<AppDbContext>
{
    public AppDbContext CreateDbContext(string[] args)
    {
        // Uses parameterless ctor + OnConfiguring (connection string from env or embedded appsettings)
        return new AppDbContext();
    }
}
