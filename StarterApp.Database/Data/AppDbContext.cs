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
}