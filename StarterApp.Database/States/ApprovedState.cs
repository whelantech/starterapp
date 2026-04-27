using StarterApp.Database.Models;

namespace StarterApp.Database.States;

public sealed class ApprovedState : IRentalState
{
    public string StateName => RentalStatuses.Approved;

    public Task<IRentalState> Approve(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Rental is already approved."));

    public Task<IRentalState> Reject(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot reject after approval."));

    public Task<IRentalState> StartRental(Rental rental)
    {
        var today = DateOnly.FromDateTime(DateTime.UtcNow);
        if (today < rental.StartDate)
            return Task.FromException<IRentalState>(new InvalidOperationException(
                $"Rental cannot start before {rental.StartDate:yyyy-MM-dd}."));

        rental.Status = RentalStatuses.OutForRent;
        return Task.FromResult<IRentalState>(new OutForRentState());
    }

    public Task<IRentalState> Return(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Cannot return before rental is out."));

    public Task<IRentalState> Complete(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Complete is only allowed after the item is returned."));

    public Task<IRentalState> Cancel(Rental rental) =>
        Task.FromException<IRentalState>(new InvalidOperationException("Borrower can only cancel while the request is pending."));
}
