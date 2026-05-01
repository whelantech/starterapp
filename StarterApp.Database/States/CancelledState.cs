using StarterApp.Database.Models;
using StarterApp.Database.Workflow;

namespace StarterApp.Database.States;

public sealed class CancelledState : IRentalState
{
    public string StateName => RentalStatusValues.Cancelled;

    public Task<IRentalState> Approve(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental was cancelled."));

    public Task<IRentalState> Reject(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental was cancelled."));

    public Task<IRentalState> StartRental(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental was cancelled."));

    public Task<IRentalState> Return(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental was cancelled."));

    public Task<IRentalState> Complete(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental was cancelled."));

    public Task<IRentalState> Cancel(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already cancelled."));
}
