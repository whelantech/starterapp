using StarterApp.Database.Workflow;

namespace StarterApp.Database.States;

public static class RentalStateFactory
{
    public static IRentalState FromStatus(string? status)
    {
        return RentalStatusNormalizer.Normalize(status) switch
        {
            RentalStatusValues.Requested => new RequestedState(),
            RentalStatusValues.Approved => new ApprovedState(),
            RentalStatusValues.Rejected => new RejectedState(),
            RentalStatusValues.OutForRent => new OutForRentState(),
            RentalStatusValues.Overdue => new OverdueState(),
            RentalStatusValues.Returned => new ReturnedState(),
            RentalStatusValues.Completed => new CompletedState(),
            RentalStatusValues.Cancelled => new ClosedRentalState(),
            var unknown => throw new InvalidOperationException($"Unknown rental status: {unknown}")
        };
    }
}
