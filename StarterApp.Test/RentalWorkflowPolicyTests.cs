using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Database.Workflow;

namespace StarterApp.Test;

public sealed class RentalWorkflowPolicyTests
{
    private static Rental BuildRental(
        string status,
        int borrowerId = 1,
        int ownerId = 2,
        DateOnly? start = null,
        DateOnly? end = null)
    {
        var s = start ?? new DateOnly(2026, 6, 1);
        var e = end ?? new DateOnly(2026, 6, 3);
        return new Rental
        {
            Id = 99,
            ItemId = 50,
            BorrowerUserId = borrowerId,
            OwnerId = ownerId,
            StartDate = s,
            EndDate = e,
            Status = status
        };
    }

    [Fact]
    public void LegacyPending_Normalizes_ToRequested_ForApproval()
    {
        var policy = new RentalWorkflowPolicy();
        var rental = BuildRental(RentalStatuses.Pending);
        Assert.True(policy.CanTransition(rental, actingUserId: 2, RentalTransition.Approve, new DateOnly(2026, 5, 1))
            .Allowed);
    }

    [Fact]
    public void Owner_ApproveReject_OnlyWhenRequested()
    {
        var policy = new RentalWorkflowPolicy();
        var requested = BuildRental(RentalStatusValues.Requested);
        Assert.True(policy.CanTransition(requested, 2, RentalTransition.Approve, new DateOnly(2026, 5, 1)).Allowed);
        Assert.True(policy.CanTransition(requested, 2, RentalTransition.Reject, new DateOnly(2026, 5, 1)).Allowed);

        var approved = BuildRental(RentalStatusValues.Approved);
        Assert.False(policy.CanTransition(approved, 2, RentalTransition.Approve, new DateOnly(2026, 5, 1)).Allowed);
    }

    [Fact]
    public void Borrower_Return_OnlyWhenOutOrOverdue()
    {
        var policy = new RentalWorkflowPolicy();
        var outRent = BuildRental(RentalStatusValues.OutForRent);
        Assert.True(policy.CanTransition(outRent, 1, RentalTransition.Return, new DateOnly(2026, 6, 2)).Allowed);

        var overdue = BuildRental(RentalStatusValues.Overdue);
        Assert.True(policy.CanTransition(overdue, 1, RentalTransition.Return, new DateOnly(2026, 6, 5)).Allowed);

        var approved = BuildRental(RentalStatusValues.Approved);
        Assert.False(policy.CanTransition(approved, 1, RentalTransition.Return, new DateOnly(2026, 6, 2)).Allowed);
    }

    [Fact]
    public void Owner_NotAllowed_ToReturn()
    {
        var policy = new RentalWorkflowPolicy();
        var outRent = BuildRental(RentalStatusValues.OutForRent);
        var r = policy.CanTransition(outRent, actingUserId: 2, RentalTransition.Return, new DateOnly(2026, 6, 2));
        Assert.False(r.Allowed);
    }

    [Fact]
    public void StartRental_RequiresApproved_AndOnOrAfterStartDate()
    {
        var policy = new RentalWorkflowPolicy();
        var approved = BuildRental(RentalStatusValues.Approved, start: new DateOnly(2026, 6, 10));
        Assert.False(policy.CanTransition(approved, 2, RentalTransition.StartRental, new DateOnly(2026, 6, 9)).Allowed);
        Assert.True(policy.CanTransition(approved, 2, RentalTransition.StartRental, new DateOnly(2026, 6, 10)).Allowed);
    }

    [Fact]
    public void GetApiPatchStatus_UsesSpacedOutForRent()
    {
        var policy = new RentalWorkflowPolicy();
        Assert.Equal(RentalStatusValues.OutForRent, policy.GetApiPatchStatus(RentalTransition.StartRental));
        Assert.Equal(RentalStatusValues.Returned, policy.GetApiPatchStatus(RentalTransition.Return));
        Assert.Equal(RentalStatusValues.Completed, policy.GetApiPatchStatus(RentalTransition.Complete));
    }
}
