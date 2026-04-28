using RentalApp.Test.Fixtures;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Repositories;

public sealed class RentalRepositoryTests
{
    [Fact]
    public async Task CreateRequestAsync_WhenValid_CreatesRental()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var ctx = fixture.Context;
        var owner = new User
        {
            Id = 1,
            Email = "owner@test.local",
            FirstName = "O",
            LastName = "wner",
            PasswordHash = "x",
            PasswordSalt = "y"
        };
        var borrower = new User
        {
            Id = 2,
            Email = "borrower@test.local",
            FirstName = "B",
            LastName = "r",
            PasswordHash = "x",
            PasswordSalt = "y"
        };
        ctx.Users.AddRange(owner, borrower);
        var item = new Item
        {
            Id = 1,
            Title = "Thing",
            Description = "d",
            DailyRate = 10,
            CategoryId = 1,
            OwnerId = 1,
            OwnerName = "O wner",
            IsAvailable = true
        };
        ctx.Items.Add(item);
        await ctx.SaveChangesAsync();
        var repo = fixture.CreateRentalRepository();
        var start = new DateOnly(2026, 5, 1);
        var end = new DateOnly(2026, 5, 3);

        // Act
        var rental = await repo.CreateRequestAsync(1, 2, start, end, "notes");

        // Assert
        Assert.True(rental.Id > 0);
        Assert.Equal(RentalStatuses.Pending, rental.Status);
        Assert.Equal(30, rental.TotalPrice);
    }

    [Fact]
    public async Task CreateRequestAsync_WhenEndBeforeStart_Throws()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        await SeedUsersAndItemAsync(fixture);
        var repo = fixture.CreateRentalRepository();

        // Act & Assert
        await Assert.ThrowsAsync<ArgumentException>(() =>
            repo.CreateRequestAsync(1, 2, new DateOnly(2026, 5, 5), new DateOnly(2026, 5, 1), null));
    }

    [Fact]
    public async Task CreateRequestAsync_WhenBorrowerIsOwner_Throws()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var ctx = fixture.Context;
        var u = new User
        {
            Id = 1,
            Email = "same@test.local",
            FirstName = "S",
            LastName = "A",
            PasswordHash = "x",
            PasswordSalt = "y"
        };
        ctx.Users.Add(u);
        ctx.Items.Add(new Item
        {
            Id = 1,
            Title = "I",
            Description = "d",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = 1,
            OwnerName = "S A",
            IsAvailable = true
        });
        await ctx.SaveChangesAsync();
        var repo = fixture.CreateRentalRepository();

        // Act & Assert
        await Assert.ThrowsAsync<InvalidOperationException>(() =>
            repo.CreateRequestAsync(1, 1, new DateOnly(2026, 6, 1), new DateOnly(2026, 6, 2), null));
    }

    [Fact]
    public async Task CreateRequestAsync_WhenBlocksOverlap_Throws()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        await SeedUsersAndItemAsync(fixture);
        var repo = fixture.CreateRentalRepository();
        await repo.CreateRequestAsync(1, 2, new DateOnly(2026, 7, 1), new DateOnly(2026, 7, 5), null);

        // Act & Assert
        await Assert.ThrowsAsync<InvalidOperationException>(() =>
            repo.CreateRequestAsync(1, 2, new DateOnly(2026, 7, 3), new DateOnly(2026, 7, 10), null));
    }

    [Fact]
    public async Task TransitionAsync_Approve_UpdatesStatus()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        await SeedUsersAndItemAsync(fixture);
        var repo = fixture.CreateRentalRepository();
        var rental = await repo.CreateRequestAsync(1, 2, new DateOnly(2026, 8, 1), new DateOnly(2026, 8, 2), null);

        // Act
        await repo.TransitionAsync(rental.Id, 1, RentalTransition.Approve);

        // Assert
        var ctx = fixture.Context;
        var updated = await ctx.Rentals.FindAsync(rental.Id);
        Assert.Equal(RentalStatuses.Approved, updated?.Status);
    }

    private static async Task SeedUsersAndItemAsync(DatabaseFixture fixture)
    {
        var ctx = fixture.Context;
        var owner = new User
        {
            Id = 1,
            Email = "o2@test.local",
            FirstName = "O",
            LastName = "1",
            PasswordHash = "x",
            PasswordSalt = "y"
        };
        var borrower = new User
        {
            Id = 2,
            Email = "b2@test.local",
            FirstName = "B",
            LastName = "1",
            PasswordHash = "x",
            PasswordSalt = "y"
        };
        ctx.Users.AddRange(owner, borrower);
        ctx.Items.Add(new Item
        {
            Id = 1,
            Title = "Item",
            Description = "d",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = 1,
            OwnerName = "O1",
            IsAvailable = true
        });
        await ctx.SaveChangesAsync();
    }
}
