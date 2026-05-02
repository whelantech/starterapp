using StarterApp.Database.Models;
using StarterApp.Database.Workflow;

namespace StarterApp.Database.States;

/// <summary>Legacy terminal state when a rental was previously withdrawn locally (status <see cref="RentalStatusValues.Cancelled"/>). No further transitions.</summary>
public sealed class ClosedRentalState : IRentalState
{
    public string StateName => RentalStatusValues.Cancelled;

    public Task<IRentalState> Approve(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("This rental is closed."));

    public Task<IRentalState> Reject(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("This rental is closed."));

    public Task<IRentalState> StartRental(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("This rental is closed."));

    public Task<IRentalState> Return(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("This rental is closed."));

    public Task<IRentalState> Complete(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("This rental is closed."));
}
