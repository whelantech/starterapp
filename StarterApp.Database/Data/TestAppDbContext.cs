using Microsoft.EntityFrameworkCore;

namespace StarterApp.Database.Data;

/// <summary>
/// DbContext for integration tests: resolves <c>TestConnection</c> from embedded configuration.
/// </summary>
/// <remarks>
/// EF Core migrations in <c>StarterApp.Migrations</c> are modelled against <see cref="AppDbContext"/>.
/// For tests that call <see cref="Microsoft.EntityFrameworkCore.RelationalDatabaseFacadeExtensions.Migrate"/>,
/// use <see cref="AppDbContext"/> with explicit Npgsql options and the test connection string
/// (see <c>TestConnection</c> in <c>StarterApp.Database/appsettings.json</c>, or tests such as
/// <see cref="StarterApp.Test.RentalRepositoryTests"/>).
/// </remarks>
public class TestAppDbContext : GenericDbContext
{
    public TestAppDbContext()
    {
    }

    public TestAppDbContext(DbContextOptions<TestAppDbContext> options) : base(options)
    {
    }

    protected override string ConnectionName => "TestConnection";
}