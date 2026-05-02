using StarterApp.Database.Models;
using StarterApp.Database.Workflow;

namespace StarterApp.Database.Repositories;

internal static class RentalTransitionParser
{
    public static RentalTransition FromNewStatusString(string newStatus)
    {
        var n = RentalStatusNormalizer.Normalize(newStatus.Trim());

        if (n == RentalStatusValues.Approved)
            return RentalTransition.Approve;

        if (n == RentalStatusValues.Rejected)
            return RentalTransition.Reject;

        if (n == RentalStatusValues.Completed)
            return RentalTransition.Complete;

        if (n == RentalStatusValues.OutForRent)
            return RentalTransition.StartRental;

        if (n == RentalStatusValues.Returned)
            return RentalTransition.Return;

        throw new InvalidOperationException($"Unknown or unsupported status: {newStatus}");
    }
}
