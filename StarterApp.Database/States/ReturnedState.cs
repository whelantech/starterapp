using StarterApp.Database.Models;

namespace StarterApp.Database.States;

public sealed class ReturnedState : IRentalState
{
    public string StateName => RentalStatuses.Returned;

    public Task<IRentalState> Approve(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already past approval."));

    public Task<IRentalState> Reject(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot reject after return."));

    public Task<IRentalState> StartRental(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental has already run."));

    public Task<IRentalState> Return(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Item is already marked returned."));

    public Task<IRentalState> Complete(Rental rental)
    {
        rental.Status = RentalStatuses.Completed;
        return Task.FromResult<IRentalState>(new CompletedState());
    }

    public Task<IRentalState> Cancel(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot cancel after return."));
}
