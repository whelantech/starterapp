using StarterApp.Database.Models;

namespace StarterApp.Services;

public sealed class RentalService : IRentalService
{
    public int GetInclusiveRentalDays(DateOnly start, DateOnly end)
    {
        if (end < start)
            return 0;
        return end.DayNumber - start.DayNumber + 1;
    }

    public int ComputeTotalPrice(int dailyRate, DateOnly start, DateOnly end)
    {
        var days = GetInclusiveRentalDays(start, end);
        return checked(dailyRate * days);
    }

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
