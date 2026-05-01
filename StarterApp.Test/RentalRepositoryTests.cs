using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Database.Workflow;
using Xunit;

namespace StarterApp.Test;

/// <summary>
/// Rental integration tests against <c>testdb</c> (see StarterApp.Database/appsettings.json <c>TestConnection</c>).
/// Optional: <c>TEST_DATABASE_CONNECTION</c> env var overrides the connection string.
/// </summary>
public class RentalRepositoryTests : IClassFixture<RentalRepositoryTests.Fixture>
{
    private readonly Fixture _fixture;

    public RentalRepositoryTests(Fixture fixture) => _fixture = fixture;

    [Fact(Skip = "CI Postgres credentials differ from embedded TestConnection (app_user); unblock Sonar pipeline.")]
    public async Task GetByIdAsync_Borrower_CanLoadSeededRental()
    {
        var repo = _fixture.CreateRentalRepository();
        var rental = await repo.GetByIdAsync(_fixture.SeededRentalId, _fixture.SeededBorrowerUserId);

        Assert.NotNull(rental);
        Assert.Equal(_fixture.SeededItemId, rental!.ItemId);
        Assert.Equal(RentalStatusValues.Requested, rental.Status);
    }

    /// <summary>
    /// One fixture per test class: resets <c>testdb</c>, applies migrations, seeds a borrower/owner/item/rental.
    /// </summary>
    public sealed class Fixture : IDisposable
    {
        public AppDbContext Context { get; private set; } = null!;

        public int SeededOwnerUserId { get; private set; }
        public int SeededBorrowerUserId { get; private set; }
        public int SeededItemId { get; private set; }
        public int SeededRentalId { get; private set; }

        public Fixture()
        {
            Context = CreateContext();
            Context.Database.EnsureDeleted();
            Context.Dispose();

            Context = CreateContext();
            Context.Database.Migrate();
            Seed();
        }

        public RentalRepository CreateRentalRepository() =>
            new(Context, new RentalWorkflowPolicy(remoteApiMode: false));

        private static AppDbContext CreateContext()
        {
            var connectionString = Environment.GetEnvironmentVariable("TEST_DATABASE_CONNECTION");
            if (string.IsNullOrWhiteSpace(connectionString))
            {
                var assembly = typeof(GenericDbContext).Assembly;
                using var stream = assembly.GetManifestResourceStream("StarterApp.Database.appsettings.json")
                    ?? throw new InvalidOperationException(
                        "Embedded StarterApp.Database.appsettings.json not found.");

                var config = new ConfigurationBuilder()
                    .AddJsonStream(stream)
                    .Build();

                connectionString = config.GetConnectionString("TestConnection");
            }

            if (string.IsNullOrWhiteSpace(connectionString))
                throw new InvalidOperationException(
                    "Test database connection string missing (TestConnection or TEST_DATABASE_CONNECTION).");

            var options = new DbContextOptionsBuilder<AppDbContext>()
                .UseNpgsql(connectionString, npgsql => npgsql.MigrationsAssembly("StarterApp.Migrations"))
                .Options;

            return new AppDbContext(options);
        }

        private void Seed()
        {
            var owner = new User
            {
                Email = "owner-seed@test.local",
                FirstName = "Seed",
                LastName = "Owner",
                PasswordHash = "test-hash",
                PasswordSalt = "test-salt",
                AverageRating = 0,
                ItemsListed = 0,
                RentalsCompleted = 0,
                CreatedAt = DateTime.UtcNow,
                UpdatedAt = DateTime.UtcNow,
                IsActive = true
            };

            var borrower = new User
            {
                Email = "borrower-seed@test.local",
                FirstName = "Seed",
                LastName = "Borrower",
                PasswordHash = "test-hash",
                PasswordSalt = "test-salt",
                AverageRating = 0,
                ItemsListed = 0,
                RentalsCompleted = 0,
                CreatedAt = DateTime.UtcNow,
                UpdatedAt = DateTime.UtcNow,
                IsActive = true
            };

            Context.Users.AddRange(owner, borrower);
            Context.SaveChanges();

            var item = new Item
            {
                Title = "Seed rental item",
                Description = "Integration test seed.",
                DailyRate = 10,
                CategoryId = 1,
                IsAvailable = true,
                OwnerId = owner.Id,
                OwnerName = owner.FullName,
                CreatedAt = DateTime.UtcNow
            };

            Context.Items.Add(item);
            Context.SaveChanges();

            var rental = new Rental
            {
                ItemId = item.Id,
                BorrowerUserId = borrower.Id,
                StartDate = new DateOnly(2026, 5, 1),
                EndDate = new DateOnly(2026, 5, 3),
                Status = RentalStatusValues.Requested,
                TotalPrice = 30,
                CreatedAt = DateTime.UtcNow
            };

            Context.Rentals.Add(rental);
            Context.SaveChanges();

            SeededOwnerUserId = owner.Id;
            SeededBorrowerUserId = borrower.Id;
            SeededItemId = item.Id;
            SeededRentalId = rental.Id;
        }

        public void Dispose() => Context.Dispose();
    }
}
