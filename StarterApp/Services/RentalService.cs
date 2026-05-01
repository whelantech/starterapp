using StarterApp.Database.Models;

namespace StarterApp.Services;

/// <summary>
/// Default implementation of rental pricing and “can rent?” rules shared by view models.
/// </summary>
public sealed class RentalService : IRentalService
{
    /// <inheritdoc />
    public int GetInclusiveRentalDays(DateOnly start, DateOnly end)
    {
        if (end < start)
            return 0;
        return end.DayNumber - start.DayNumber + 1;
    }

    /// <inheritdoc />
    public int ComputeTotalPrice(int dailyRate, DateOnly start, DateOnly end)
    {
        var days = GetInclusiveRentalDays(start, end);
        return checked(dailyRate * days);
    }

    /// <inheritdoc />
    public bool CanOfferRent(Item? item, int? currentUserId)
    {
        if (item is null || currentUserId is null)
            return false;

        if (!item.IsAvailable)
            return false;

        if (item.OwnerId is null || item.OwnerId.Value == currentUserId.Value)
            return false;

        return true;
    }
}
