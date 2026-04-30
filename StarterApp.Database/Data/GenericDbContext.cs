using System.Reflection;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using StarterApp.Database.Models;

namespace StarterApp.Database.Data;

public abstract class GenericDbContext : DbContext
{
    protected GenericDbContext()
    {
    }

    protected GenericDbContext(DbContextOptions options) : base(options)
    {
    }

    /// <summary>
    /// Connection string *name* in embedded appsettings.json (e.g. DevelopmentConnection, TestConnection).
    /// </summary>
    protected abstract string ConnectionName { get; }

    /// <summary>
    /// When true, the <c>CONNECTION_STRING</c> environment variable overrides named connection resolution.
    /// <see cref="TestAppDbContext"/> keeps this false so tests always use <c>TestConnection</c> (or options passed in).
    /// </summary>
    protected virtual bool UseConnectionStringEnvironmentOverride => false;

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        if (optionsBuilder.IsConfigured)
            return;

        string? connectionString =
            UseConnectionStringEnvironmentOverride
                ? Environment.GetEnvironmentVariable("CONNECTION_STRING")
                : null;

        if (string.IsNullOrEmpty(connectionString))
        {
            var assembly = Assembly.GetExecutingAssembly();
            using var stream = assembly.GetManifestResourceStream("StarterApp.Database.appsettings.json");

            var config = new ConfigurationBuilder()
                .AddJsonStream(stream)
                .Build();

            connectionString = config.GetConnectionString(ConnectionName);
        }

        optionsBuilder.UseNpgsql(
            connectionString,
            npgsql => npgsql.MigrationsAssembly("StarterApp.Migrations"));
    }

    public DbSet<Role> Roles { get; set; }
    public DbSet<User> Users { get; set; }
    public DbSet<UserRole> UserRoles { get; set; }
    public DbSet<Category> Categories { get; set; }
    public DbSet<Item> Items { get; set; }
    public DbSet<Rental> Rentals { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasIndex(e => e.Name).IsUnique();
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.ColorHex).HasMaxLength(7);
            entity.Property(e => e.Description).HasMaxLength(200);
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasIndex(e => e.Email).IsUnique();
            entity.Property(e => e.Email).HasMaxLength(255);
            entity.Property(e => e.FirstName).HasMaxLength(100);
            entity.Property(e => e.LastName).HasMaxLength(100);
            entity.Property(e => e.PasswordHash).HasMaxLength(255);
            entity.Property(e => e.PasswordSalt).HasMaxLength(255);
        });

        modelBuilder.Entity<Item>(entity =>
        {
            entity.HasIndex(e => e.CategoryId);
            entity.HasIndex(e => e.CreatedAt);
            entity.Property(e => e.Title).HasMaxLength(100);
            entity.Property(e => e.Description).HasColumnType("text");

            entity.HasOne(n => n.Category)
                .WithMany(c => c.Items)
                .HasForeignKey(n => n.CategoryId)
                .OnDelete(DeleteBehavior.SetNull);
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasIndex(e => e.Name).IsUnique();
            entity.Property(e => e.Name).HasMaxLength(100);
            entity.Property(e => e.Description).HasMaxLength(500);
        });

        modelBuilder.Entity<UserRole>(entity =>
        {
            entity.HasIndex(e => new { e.UserId, e.RoleId }).IsUnique();

            entity.HasOne(ur => ur.User)
                .WithMany(u => u.UserRoles)
                .HasForeignKey(ur => ur.UserId);

            entity.HasOne(ur => ur.Role)
                .WithMany(r => r.UserRoles)
                .HasForeignKey(ur => ur.RoleId);
        });

        modelBuilder.Entity<Rental>(entity =>
        {
            entity.HasIndex(e => e.ItemId);
            entity.HasIndex(e => e.BorrowerUserId);
            entity.HasIndex(e => new { e.ItemId, e.Status });

            entity.Property(e => e.Status).HasMaxLength(50);
            entity.Property(e => e.Comments).HasMaxLength(2000);

            entity.HasOne(r => r.Item)
                .WithMany()
                .HasForeignKey(r => r.ItemId)
                .OnDelete(DeleteBehavior.Restrict);

            entity.HasOne(r => r.Borrower)
                .WithMany()
                .HasForeignKey(r => r.BorrowerUserId)
                .OnDelete(DeleteBehavior.Restrict);
        });

        SeedData(modelBuilder);
    }

    private static void SeedData(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Category>().HasData(
            new Category
            {
                Id = 1, Name = "Electronics", ColorHex = "#4CAF50",
                Description = "Electronics items like laptops, tablets, smartphones, etc."
            },
            new Category
            {
                Id = 2, Name = "Books", ColorHex = "#2196F3", Description = "Books like novels, textbooks, etc."
            },
            new Category
            {
                Id = 3, Name = "Furniture", ColorHex = "#FF9800",
                Description = "Furniture items like sofas, chairs, beds, tables, etc."
            },
            new Category
            {
                Id = 4, Name = "Home", ColorHex = "#E91E63",
                Description = "Home items like appliances, decor, household items, etc."
            },
            new Category
            {
                Id = 5, Name = "Garden", ColorHex = "#E91E63",
                Description = "Garden items like gardening tools, lawnmowers, etc."
            },
            new Category
            {
                Id = 6, Name = "Tools", ColorHex = "#E91E63",
                Description = "Tools like hammers, screwdrivers, Drills etc."
            },
            new Category
            {
                Id = 7, Name = "Automotive", ColorHex = "#E91E63",
                Description = "Automotive items like cars, motorcycles, car parts, etc."
            },
            new Category
            {
                Id = 8, Name = "Other", ColorHex = "#E91E63", Description = "Other items not categorized"
            });
    }
}