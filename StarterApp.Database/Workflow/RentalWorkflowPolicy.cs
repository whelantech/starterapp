using StarterApp.Database.Models;

namespace StarterApp.Database.Workflow;

public sealed class RentalWorkflowPolicy : IRentalWorkflowPolicy
{
    public string NormalizeStatus(string? status) => RentalStatusNormalizer.Normalize(status);

    public bool IsRequestedLike(string? status) =>
        NormalizeStatus(status) == RentalStatusValues.Requested;

    public bool IsApprovedLike(string? status) =>
        NormalizeStatus(status) == RentalStatusValues.Approved;

    public bool IsOutForRentOrOverdue(string? status)
    {
        var n = NormalizeStatus(status);
        return n == RentalStatusValues.OutForRent || n == RentalStatusValues.Overdue;
    }

    public bool IsReturnedLike(string? status) =>
        NormalizeStatus(status) == RentalStatusValues.Returned;

    public (bool Allowed, string? Reason) CanTransition(
        Rental rental,
        int actingUserId,
        RentalTransition transition,
        DateOnly todayUtc)
    {
        if (rental.OwnerId is not int ownerId)
            return (false, "Rental owner is unknown.");

        var norm = NormalizeStatus(rental.Status);
        var borrowerId = rental.BorrowerUserId;

        switch (transition)
        {
            case RentalTransition.Approve:
                if (!IsRequestedLike(norm))
                    return (false, "Only pending requests can be approved.");
                if (actingUserId != ownerId)
                    return (false, "Only the owner can approve rental requests.");
                return (true, null);

            case RentalTransition.Reject:
                if (!IsRequestedLike(norm))
                    return (false, "Only pending requests can be rejected.");
                if (actingUserId != ownerId)
                    return (false, "Only the owner can reject rental requests.");
                return (true, null);

            case RentalTransition.StartRental:
                if (!IsApprovedLike(norm))
                    return (false, "The rental must be approved before it can go out.");
                if (actingUserId != ownerId)
                    return (false, "Only the owner can mark the item as out for rent.");
                if (todayUtc < rental.StartDate)
                {
                    return (false,
                        $"Rental cannot start before {rental.StartDate:yyyy-MM-dd}.");
                }
                return (true, null);

            case RentalTransition.Return:
                if (!IsOutForRentOrOverdue(norm))
                    return (false, "Return is only available while the item is out or overdue.");
                if (actingUserId != borrowerId)
                    return (false, "Only the borrower can mark the item as returned.");
                return (true, null);

            case RentalTransition.Complete:
                if (!IsReturnedLike(norm))
                    return (false, "Only returned rentals can be completed.");
                if (actingUserId != ownerId)
                    return (false, "Only the owner can complete the rental.");
                return (true, null);

            default:
                throw new ArgumentOutOfRangeException(nameof(transition), transition, null);
        }
    }

    public string GetApiPatchStatus(RentalTransition transition) =>
        transition switch
        {
            RentalTransition.Approve => RentalStatusValues.Approved,
            RentalTransition.Reject => RentalStatusValues.Rejected,
            RentalTransition.StartRental => RentalStatusValues.OutForRent,
            RentalTransition.Return => RentalStatusValues.Returned,
            RentalTransition.Complete => RentalStatusValues.Completed,
            _ => throw new ArgumentOutOfRangeException(nameof(transition), transition, null)
        };
}
