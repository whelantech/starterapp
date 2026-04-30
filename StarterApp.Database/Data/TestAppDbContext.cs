using Microsoft.EntityFrameworkCore;

namespace StarterApp.Database.Data;

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