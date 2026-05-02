using StarterApp.Database.Models;
using StarterApp.Database.Workflow;

namespace StarterApp.Database.States;

public sealed class RequestedState : IRentalState
{
    public string StateName => RentalStatusValues.Requested;

    public Task<IRentalState> Approve(Rental rental)
    {
        rental.Status = RentalStatusValues.Approved;
        return Task.FromResult<IRentalState>(new ApprovedState());
    }

    public Task<IRentalState> Reject(Rental rental)
    {
        rental.Status = RentalStatusValues.Rejected;
        return Task.FromResult<IRentalState>(new RejectedState());
    }

    public Task<IRentalState> StartRental(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot start rental until approved."));

    public Task<IRentalState> Return(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot return before rental has started."));

    public Task<IRentalState> Complete(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot complete a rental that is still requested."));
}
