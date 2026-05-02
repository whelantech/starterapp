using StarterApp.Database.Models;
using StarterApp.Services;

namespace StarterApp.Test.Fakes;

/// <summary>Configurable <see cref="IRentalService"/> for ViewModel tests; delegates pricing to <see cref="RentalService"/> by default.</summary>
public sealed class FakeRentalService : IRentalService
{
    private readonly RentalService _inner = new();

    /// <summary>Overrides <see cref="CanOfferRent"/>; when null, uses <see cref="RentalService.CanOfferRent"/>.</summary>
    public Func<Item?, int?, bool>? CanOfferRentOverride { get; set; }

    public int GetInclusiveRentalDays(DateOnly start, DateOnly end) => _inner.GetInclusiveRentalDays(start, end);

    public int ComputeTotalPrice(int dailyRate, DateOnly start, DateOnly end) =>
        _inner.ComputeTotalPrice(dailyRate, start, end);

    public bool CanOfferRent(Item? item, int? currentUserId) =>
        CanOfferRentOverride?.Invoke(item, currentUserId) ?? _inner.CanOfferRent(item, currentUserId);
}
