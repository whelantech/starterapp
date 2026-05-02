using StarterApp.Database.Models;
using StarterApp.Database.Workflow;

namespace StarterApp.Database.States;

public sealed class RejectedState : IRentalState
{
    public string StateName => RentalStatusValues.Rejected;

    public Task<IRentalState> Approve(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental was rejected."));

    public Task<IRentalState> Reject(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already rejected."));

    public Task<IRentalState> StartRental(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot start a rejected rental."));

    public Task<IRentalState> Return(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot return a rejected rental."));

    public Task<IRentalState> Complete(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot complete a rejected rental."));
}
