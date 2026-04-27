using StarterApp.Database.Models;

namespace StarterApp.Database.States;

/// <summary>
/// State pattern: each concrete state encapsulates allowed transitions.
/// </summary>
public interface IRentalState
{
    string StateName { get; }

    Task<IRentalState> Approve(Rental rental);

    Task<IRentalState> Reject(Rental rental);

    Task<IRentalState> StartRental(Rental rental);

    Task<IRentalState> Return(Rental rental);

    Task<IRentalState> Complete(Rental rental);

    Task<IRentalState> Cancel(Rental rental);
}
