using StarterApp.Database.Models;
using StarterApp.Services;

namespace RentalApp.Test.Services;

public sealed class RentalServiceTests
{
    private readonly RentalService _sut = new();

    [Theory]
    [InlineData(2026, 1, 1, 2026, 1, 1, 1)]
    [InlineData(2026, 1, 1, 2026, 1, 3, 3)]
    public void GetInclusiveRentalDays_WhenValidRange_ReturnsDayCount(
        int ys, int ms, int ds, int ye, int me, int de, int expected)
    {
        // Act
        var n = _sut.GetInclusiveRentalDays(
            new DateOnly(ys, ms, ds),
            new DateOnly(ye, me, de));

        // Assert
        Assert.Equal(expected, n);
    }

    [Fact]
    public void GetInclusiveRentalDays_WhenEndBeforeStart_ReturnsZero()
    {
        // Act
        var n = _sut.GetInclusiveRentalDays(
            new DateOnly(2026, 2, 2),
            new DateOnly(2026, 2, 1));

        // Assert
        Assert.Equal(0, n);
    }

    [Theory]
    [InlineData(5, 2026, 1, 1, 2026, 1, 3, 15)]
    public void ComputeTotalPrice_MatchesInclusiveDays(
        int daily, int ys, int ms, int ds, int ye, int me, int de, int expected)
    {
        // Act
        var p = _sut.ComputeTotalPrice(
            daily,
            new DateOnly(ys, ms, ds),
            new DateOnly(ye, me, de));

        // Assert
        Assert.Equal(expected, p);
    }

    [Theory]
    [InlineData(10, 5, true, true)]
    [InlineData(10, 10, true, false)]
    [InlineData(10, 5, false, false)]
    public void CanOfferRent_ReflectsOwnerAndAvailability(
        int ownerId, int currentUser, bool available, bool expected)
    {
        // Arrange
        var item = new Item
        {
            Title = "t",
            Description = "d",
            DailyRate = 1,
            OwnerName = "o",
            IsAvailable = available,
            OwnerId = ownerId
        };

        // Act
        var can = _sut.CanOfferRent(item, currentUser);

        // Assert
        Assert.Equal(expected, can);
    }

    [Fact]
    public void CanOfferRent_WhenItemNull_ReturnsFalse()
    {
        // Act
        var can = _sut.CanOfferRent(null, 1);

        // Assert
        Assert.False(can);
    }

    [Fact]
    public void CanOfferRent_WhenUserNull_ReturnsFalse()
    {
        // Arrange
        var item = new Item
        {
            Title = "t",
            Description = "d",
            DailyRate = 1,
            OwnerName = "o",
            IsAvailable = true,
            OwnerId = 1
        };

        // Act
        var can = _sut.CanOfferRent(item, null);

        // Assert
        Assert.False(can);
    }
}
