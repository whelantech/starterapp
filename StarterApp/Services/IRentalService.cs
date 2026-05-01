using StarterApp.Database.Models;

namespace StarterApp.Services;

/// <summary>
/// Shared rental pricing and eligibility helpers (ViewModels stay thin).
/// </summary>
public interface IRentalService
{
    /// <summary>
    /// Inclusive calendar days from start through end (same rule as local <see cref="StarterApp.Database.Repositories.RentalRepository"/>).
    /// </summary>
    int GetInclusiveRentalDays(DateOnly start, DateOnly end);

    /// <summary>Total hire cost (<paramref name="dailyRate"/> × inclusive days), using checked arithmetic.</summary>
    int ComputeTotalPrice(int dailyRate, DateOnly start, DateOnly end);

    /// <summary>
    /// Whether the Rent action should be offered for this item and user.
    /// </summary>
    bool CanOfferRent(Item? item, int? currentUserId);
}
