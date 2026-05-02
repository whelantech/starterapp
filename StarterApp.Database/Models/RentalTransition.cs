namespace StarterApp.Database.Models;

/// <summary>
/// Intent when changing rental workflow; enforced by state types in <c>StarterApp.Database.States</c>.
/// </summary>
public enum RentalTransition
{
    Approve,
    Reject,
    StartRental,
    Return,
    Complete
}
