using StarterApp.Database.Models;

namespace StarterApp.Database.States;

public sealed class CompletedState : IRentalState
{
    public string StateName => RentalStatuses.Completed;

    public Task<IRentalState> Approve(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already completed."));

    public Task<IRentalState> Reject(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already completed."));

    public Task<IRentalState> StartRental(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already completed."));

    public Task<IRentalState> Return(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already completed."));

    public Task<IRentalState> Complete(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already completed."));

    public Task<IRentalState> Cancel(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already completed."));
}
