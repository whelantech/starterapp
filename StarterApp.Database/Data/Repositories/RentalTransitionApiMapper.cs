using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Maps transitions to PATCH body status strings for the shared API (PascalCase literals).
/// </summary>
public static class RentalTransitionApiMapper
{
    public static string ToApiStatus(RentalTransition transition) =>
        transition switch
        {
            RentalTransition.Approve => RentalStatuses.Approved,
            RentalTransition.Reject => RentalStatuses.Rejected,
            RentalTransition.Cancel => RentalStatuses.Cancelled,
            RentalTransition.StartRental => RentalStatuses.OutForRent,
            RentalTransition.Return => RentalStatuses.Returned,
            RentalTransition.Complete => RentalStatuses.Completed,
            _ => throw new ArgumentOutOfRangeException(nameof(transition), transition, null)
        };
}
