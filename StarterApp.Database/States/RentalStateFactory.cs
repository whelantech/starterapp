using StarterApp.Database.Models;

namespace StarterApp.Database.States;

public static class RentalStateFactory
{
    public static IRentalState FromStatus(string? status)
    {
        if (string.IsNullOrWhiteSpace(status))
            return new RequestedState();

        var s = status.Trim();
        if (s.Equals(RentalStatuses.Pending, StringComparison.OrdinalIgnoreCase))
            return new RequestedState();
        if (s.Equals(RentalStatuses.Approved, StringComparison.OrdinalIgnoreCase))
            return new ApprovedState();
        if (s.Equals(RentalStatuses.Rejected, StringComparison.OrdinalIgnoreCase))
            return new RejectedState();
        if (s.Equals(RentalStatuses.OutForRent, StringComparison.OrdinalIgnoreCase))
            return new OutForRentState();
        if (s.Equals(RentalStatuses.Returned, StringComparison.OrdinalIgnoreCase))
            return new ReturnedState();
        if (s.Equals(RentalStatuses.Completed, StringComparison.OrdinalIgnoreCase))
            return new CompletedState();
        if (s.Equals(RentalStatuses.Cancelled, StringComparison.OrdinalIgnoreCase) ||
            s.Equals("Canceled", StringComparison.OrdinalIgnoreCase))
            return new CancelledState();

        throw new InvalidOperationException($"Unknown rental status: {s}");
    }
}
