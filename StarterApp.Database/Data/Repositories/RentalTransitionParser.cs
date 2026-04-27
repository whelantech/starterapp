using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

internal static class RentalTransitionParser
{
    public static RentalTransition FromNewStatusString(string newStatus)
    {
        var n = newStatus.Trim();
        if (n.Equals(RentalStatuses.Approved, StringComparison.OrdinalIgnoreCase))
            return RentalTransition.Approve;
        if (n.Equals(RentalStatuses.Rejected, StringComparison.OrdinalIgnoreCase))
            return RentalTransition.Reject;
        if (n.Equals(RentalStatuses.Cancelled, StringComparison.OrdinalIgnoreCase) ||
            n.Equals("Canceled", StringComparison.OrdinalIgnoreCase))
            return RentalTransition.Cancel;
        if (n.Equals(RentalStatuses.Completed, StringComparison.OrdinalIgnoreCase))
            return RentalTransition.Complete;
        if (n.Equals(RentalStatuses.OutForRent, StringComparison.OrdinalIgnoreCase))
            return RentalTransition.StartRental;
        if (n.Equals(RentalStatuses.Returned, StringComparison.OrdinalIgnoreCase))
            return RentalTransition.Return;

        throw new InvalidOperationException($"Unknown or unsupported status: {n}");
    }
}
