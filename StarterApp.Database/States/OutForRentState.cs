using StarterApp.Database.Models;

namespace StarterApp.Database.States;

public sealed class OutForRentState : IRentalState
{
    public string StateName => RentalStatuses.OutForRent;

    public Task<IRentalState> Approve(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already active."));

    public Task<IRentalState> Reject(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot reject an active rental."));

    public Task<IRentalState> StartRental(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already out."));

    public Task<IRentalState> Return(Rental rental)
    {
        rental.Status = RentalStatuses.Returned;
        return Task.FromResult<IRentalState>(new ReturnedState());
    }

    public Task<IRentalState> Complete(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Mark returned before completing."));

    public Task<IRentalState> Cancel(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot cancel an active rental."));
}
