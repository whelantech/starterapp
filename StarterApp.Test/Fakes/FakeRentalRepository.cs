using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Database.Workflow;

namespace StarterApp.Test.Fakes;

/// <summary>In-memory <see cref="IRentalRepository"/> for ViewModel tests.</summary>
public sealed class FakeRentalRepository : IRentalRepository
{
    public List<Rental> Rentals { get; } = new();

    public Exception? GetOutgoingFault { get; set; }

    public Exception? GetIncomingFault { get; set; }

    public Task<Rental> CreateRequestAsync(
        int itemId,
        int borrowerUserId,
        DateOnly start,
        DateOnly end,
        string? comments,
        CancellationToken cancellationToken = default)
    {
        var id = Rentals.Count == 0 ? 1 : Rentals.Max(r => r.Id) + 1;
        var r = new Rental
        {
            Id = id,
            ItemId = itemId,
            BorrowerUserId = borrowerUserId,
            StartDate = start,
            EndDate = end,
            Status = RentalStatusValues.Requested,
            TotalPrice = 0,
            Comments = comments,
            CreatedAt = DateTime.UtcNow,
            OwnerId = 99,
            OwnerName = "Owner",
            ItemTitle = "Item"
        };
        Rentals.Add(r);
        return Task.FromResult(r);
    }

    public Task<IReadOnlyList<Rental>> GetIncomingAsync(int ownerUserId, string? statusFilter = null,
        CancellationToken cancellationToken = default)
    {
        if (GetIncomingFault is not null)
            throw GetIncomingFault;

        var q = Rentals.Where(r => r.OwnerId == ownerUserId);
        if (!string.IsNullOrWhiteSpace(statusFilter))
            q = q.Where(r => string.Equals(r.Status, statusFilter, StringComparison.OrdinalIgnoreCase));
        return Task.FromResult<IReadOnlyList<Rental>>(q.ToList());
    }

    public Task<IReadOnlyList<Rental>> GetOutgoingAsync(int borrowerUserId, string? statusFilter = null,
        CancellationToken cancellationToken = default)
    {
        if (GetOutgoingFault is not null)
            throw GetOutgoingFault;

        var q = Rentals.Where(r => r.BorrowerUserId == borrowerUserId);
        if (!string.IsNullOrWhiteSpace(statusFilter))
            q = q.Where(r => string.Equals(r.Status, statusFilter, StringComparison.OrdinalIgnoreCase));
        return Task.FromResult<IReadOnlyList<Rental>>(q.ToList());
    }

    public Task<Rental?> GetByIdAsync(int rentalId, int currentUserId, CancellationToken cancellationToken = default)
    {
        var r = Rentals.FirstOrDefault(x => x.Id == rentalId);
        return Task.FromResult(r);
    }

    public Task TransitionAsync(int rentalId, int actingUserId, RentalTransition transition,
        CancellationToken cancellationToken = default)
    {
        var r = Rentals.FirstOrDefault(x => x.Id == rentalId);
        if (r is null)
            return Task.CompletedTask;
        r.Status = transition switch
        {
            RentalTransition.Approve => RentalStatusValues.Approved,
            RentalTransition.Reject => RentalStatusValues.Rejected,
            RentalTransition.StartRental => RentalStatusValues.OutForRent,
            RentalTransition.Return => RentalStatusValues.Returned,
            RentalTransition.Complete => RentalStatusValues.Completed,
            _ => r.Status
        };
        return Task.CompletedTask;
    }

    public Task UpdateStatusAsync(int rentalId, int actingUserId, string newStatus,
        CancellationToken cancellationToken = default)
    {
        var r = Rentals.FirstOrDefault(x => x.Id == rentalId);
        if (r is not null)
            r.Status = newStatus;
        return Task.CompletedTask;
    }
}
