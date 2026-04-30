using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Database.States;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Local EF Core implementation of rentals with overlap checks and comments.
/// </summary>
public class RentalRepository : IRentalRepository
{
    private static readonly string[] OverlapBlockingStatuses =
    {
        RentalStatuses.Pending,
        RentalStatuses.Approved,
        RentalStatuses.OutForRent,
        RentalStatuses.Returned
    };

    private readonly GenericDbContext _context;

    public RentalRepository(GenericDbContext context)
    {
        _context = context;
    }

    /// <inheritdoc />
    public async Task<Rental> CreateRequestAsync(
        int itemId,
        int borrowerUserId,
        DateOnly start,
        DateOnly end,
        string? comments,
        CancellationToken cancellationToken = default)
    {
        if (end < start)
            throw new ArgumentException("End date must be on or after start date.");

        var item = await _context.Items.AsNoTracking().FirstOrDefaultAsync(i => i.Id == itemId, cancellationToken);
        if (item is null)
            throw new InvalidOperationException("Item not found.");

        if (item.OwnerId == borrowerUserId)
            throw new InvalidOperationException("You cannot rent your own item.");

        if (!item.IsAvailable)
            throw new InvalidOperationException("This item is not available for rent.");

        var hasOverlap = await HasBlockingOverlapAsync(itemId, start, end, excludeRentalId: null, cancellationToken);
        if (hasOverlap)
            throw new InvalidOperationException("Those dates overlap an existing rental for this item.");

        var inclusiveDays = end.DayNumber - start.DayNumber + 1;
        if (inclusiveDays < 1)
            throw new InvalidOperationException("Invalid rental period.");

        var totalPrice = checked(item.DailyRate * inclusiveDays);

        var rental = new Rental
        {
            ItemId = itemId,
            BorrowerUserId = borrowerUserId,
            StartDate = start,
            EndDate = end,
            Status = RentalStatuses.Pending,
            TotalPrice = totalPrice,
            Comments = string.IsNullOrWhiteSpace(comments) ? null : comments.Trim(),
            CreatedAt = DateTime.UtcNow
        };

        _context.Rentals.Add(rental);
        await _context.SaveChangesAsync(cancellationToken);

        return await GetByIdAsync(rental.Id, borrowerUserId, cancellationToken)
               ?? rental;
    }

    private async Task<bool> HasBlockingOverlapAsync(
        int itemId,
        DateOnly start,
        DateOnly end,
        int? excludeRentalId,
        CancellationToken cancellationToken)
    {
        var q = _context.Rentals
            .AsNoTracking()
            .Where(r => r.ItemId == itemId && OverlapBlockingStatuses.Contains(r.Status));

        if (excludeRentalId.HasValue)
            q = q.Where(r => r.Id != excludeRentalId.Value);

        return await q.AnyAsync(r => r.StartDate <= end && r.EndDate >= start, cancellationToken);
    }

    /// <inheritdoc />
    public async Task<IReadOnlyList<Rental>> GetIncomingAsync(
        int ownerUserId,
        string? statusFilter = null,
        CancellationToken cancellationToken = default)
    {
        var q = _context.Rentals
            .AsNoTracking()
            .Include(r => r.Item)
            .Include(r => r.Borrower)
            .Where(r => r.Item != null && r.Item.OwnerId == ownerUserId);

        if (!string.IsNullOrWhiteSpace(statusFilter))
        {
            var s = statusFilter.Trim();
            q = q.Where(r => r.Status == s);
        }

        var list = await q.OrderByDescending(r => r.CreatedAt).ToListAsync(cancellationToken);
        foreach (var r in list)
            DenormalizeForDisplay(r);
        return list;
    }

    /// <inheritdoc />
    public async Task<IReadOnlyList<Rental>> GetOutgoingAsync(
        int borrowerUserId,
        string? statusFilter = null,
        CancellationToken cancellationToken = default)
    {
        var q = _context.Rentals
            .AsNoTracking()
            .Include(r => r.Item)
            .Include(r => r.Borrower)
            .Where(r => r.BorrowerUserId == borrowerUserId);

        if (!string.IsNullOrWhiteSpace(statusFilter))
        {
            var s = statusFilter.Trim();
            q = q.Where(r => r.Status == s);
        }

        var list = await q.OrderByDescending(r => r.CreatedAt).ToListAsync(cancellationToken);
        foreach (var r in list)
            DenormalizeForDisplay(r);
        return list;
    }

    /// <inheritdoc />
    public async Task<Rental?> GetByIdAsync(int rentalId, int currentUserId,
        CancellationToken cancellationToken = default)
    {
        var r = await _context.Rentals
            .AsNoTracking()
            .Include(x => x.Item)
            .Include(x => x.Borrower)
            .FirstOrDefaultAsync(x => x.Id == rentalId, cancellationToken);

        if (r is null)
            return null;

        var isBorrower = r.BorrowerUserId == currentUserId;
        var isOwner = r.Item?.OwnerId == currentUserId;
        if (!isBorrower && !isOwner)
            return null;

        DenormalizeForDisplay(r);
        r.RequestedAt = r.CreatedAt;
        return r;
    }

    /// <inheritdoc />
    public async Task TransitionAsync(
        int rentalId,
        int actingUserId,
        RentalTransition transition,
        CancellationToken cancellationToken = default)
    {
        var rental = await _context.Rentals
            .Include(r => r.Item)
            .FirstOrDefaultAsync(r => r.Id == rentalId, cancellationToken);

        if (rental is null)
            throw new InvalidOperationException("Rental not found.");

        var isBorrower = rental.BorrowerUserId == actingUserId;
        var isOwner = rental.Item?.OwnerId == actingUserId;
        if (!isBorrower && !isOwner)
            throw new UnauthorizedAccessException("Not allowed to update this rental.");

        var state = RentalStateFactory.FromStatus(rental.Status);

        switch (transition)
        {
            case RentalTransition.Approve:
                if (!isOwner)
                    throw new UnauthorizedAccessException("Only the owner can approve.");
                if (await HasBlockingOverlapAsync(
                        rental.ItemId,
                        rental.StartDate,
                        rental.EndDate,
                        excludeRentalId: rental.Id,
                        cancellationToken))
                    throw new InvalidOperationException("Those dates overlap an existing rental for this item.");
                await InvokeStateAsync(state, s => s.Approve(rental)).ConfigureAwait(false);
                break;

            case RentalTransition.Reject:
                if (!isOwner)
                    throw new UnauthorizedAccessException("Only the owner can reject.");
                await InvokeStateAsync(state, s => s.Reject(rental)).ConfigureAwait(false);
                break;

            case RentalTransition.Cancel:
                if (!isBorrower)
                    throw new UnauthorizedAccessException("Only the borrower can cancel a pending request.");
                await InvokeStateAsync(state, s => s.Cancel(rental)).ConfigureAwait(false);
                break;

            case RentalTransition.StartRental:
                if (!isOwner)
                    throw new UnauthorizedAccessException("Only the owner can start the rental.");
                await InvokeStateAsync(state, s => s.StartRental(rental)).ConfigureAwait(false);
                break;

            case RentalTransition.Return:
                if (!isOwner)
                    throw new UnauthorizedAccessException("Only the owner can mark the item returned.");
                await InvokeStateAsync(state, s => s.Return(rental)).ConfigureAwait(false);
                break;

            case RentalTransition.Complete:
                if (!isOwner)
                    throw new UnauthorizedAccessException("Only the owner can complete the rental.");
                await InvokeStateAsync(state, s => s.Complete(rental)).ConfigureAwait(false);
                break;

            default:
                throw new ArgumentOutOfRangeException(nameof(transition), transition, null);
        }

        await _context.SaveChangesAsync(cancellationToken).ConfigureAwait(false);
    }

    /// <inheritdoc />
    public Task UpdateStatusAsync(
        int rentalId,
        int actingUserId,
        string newStatus,
        CancellationToken cancellationToken = default)
    {
        var transition = RentalTransitionParser.FromNewStatusString(newStatus);
        return TransitionAsync(rentalId, actingUserId, transition, cancellationToken);
    }

    private static async Task InvokeStateAsync(IRentalState state, Func<IRentalState, Task<IRentalState>> call)
    {
        _ = await call(state).ConfigureAwait(false);
    }

    private static void DenormalizeForDisplay(Rental r)
    {
        r.ItemTitle = r.Item?.Title;
        r.ItemDescription = r.Item?.Description;
        r.BorrowerName = r.Borrower?.FullName;
        r.OwnerId = r.Item?.OwnerId;
        r.OwnerName = r.Item?.OwnerName;
    }
}
