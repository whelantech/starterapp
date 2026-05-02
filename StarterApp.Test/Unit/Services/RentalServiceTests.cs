using StarterApp.Database.Models;
using StarterApp.Services;

namespace StarterApp.Test.Unit.Services;

public sealed class RentalServiceTests
{
    private readonly RentalService _sut = new();

    [Theory]
    [InlineData("2026-06-01", "2026-06-01", 1)]
    [InlineData("2026-06-01", "2026-06-03", 3)]
    [InlineData("2026-06-03", "2026-06-01", 0)]
    public void GetInclusiveRentalDays_matches_inclusive_span(string start, string end, int expected)
    {
        var s = DateOnly.Parse(start, System.Globalization.CultureInfo.InvariantCulture);
        var e = DateOnly.Parse(end, System.Globalization.CultureInfo.InvariantCulture);
        Assert.Equal(expected, _sut.GetInclusiveRentalDays(s, e));
    }

    [Fact]
    public void ComputeTotalPrice_multiplies_days_by_rate()
    {
        var start = new DateOnly(2026, 1, 1);
        var end = new DateOnly(2026, 1, 3);
        Assert.Equal(30, _sut.ComputeTotalPrice(10, start, end));
    }

    [Fact]
    public void ComputeTotalPrice_when_end_before_start_returns_zero()
    {
        var start = new DateOnly(2026, 2, 5);
        var end = new DateOnly(2026, 2, 1);
        Assert.Equal(0, _sut.ComputeTotalPrice(100, start, end));
    }

    [Fact]
    public void ComputeTotalPrice_overflow_throws()
    {
        var start = new DateOnly(2026, 1, 1);
        var end = new DateOnly(2026, 1, 10);
        Assert.Throws<OverflowException>(() => _sut.ComputeTotalPrice(int.MaxValue, start, end));
    }

    [Fact]
    public void CanOfferRent_false_when_item_null_or_user_null()
    {
        Assert.False(_sut.CanOfferRent(null, 1));
        Assert.False(_sut.CanOfferRent(new Item { IsAvailable = true, OwnerId = 2 }, null));
    }

    [Fact]
    public void CanOfferRent_false_when_not_available_or_same_owner()
    {
        var item = new Item { IsAvailable = false, OwnerId = 2 };
        Assert.False(_sut.CanOfferRent(item, 5));

        item.IsAvailable = true;
        Assert.False(_sut.CanOfferRent(item, 2));
    }

    [Fact]
    public void CanOfferRent_true_when_other_owner_and_available()
    {
        var item = new Item { IsAvailable = true, OwnerId = 2 };
        Assert.True(_sut.CanOfferRent(item, 5));
    }
}
