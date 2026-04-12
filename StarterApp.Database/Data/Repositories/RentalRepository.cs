using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;
using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Local EF Core implementation of rentals with overlap checks and comments.
/// </summary>
public class RentalRepository : IRentalRepository
{
    private static readonly string[] OverlapBlockingStatuses =
    {
        RentalStatuses.Pending,
        RentalStatuses.Approved
    };

    private readonly AppDbContext _context;

    public RentalRepository(AppDbContext context)
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

        var hasOverlap = await HasBlockingOverlapAsync(itemId, start, end, cancellationToken);
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

    private async Task<bool> HasBlockingOverlapAsync(int itemId, DateOnly start, DateOnly end,
        CancellationToken cancellationToken)
    {
        return await _context.Rentals
            .AsNoTracking()
            .Where(r => r.ItemId == itemId && OverlapBlockingStatuses.Contains(r.Status))
            .AnyAsync(r => r.StartDate <= end && r.EndDate >= start, cancellationToken);
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
    public async Task UpdateStatusAsync(
        int rentalId,
        int actingUserId,
        string newStatus,
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

        var normalized = newStatus.Trim();
        if (isOwner && (normalized == RentalStatuses.Approved || normalized == RentalStatuses.Rejected))
        {
            rental.Status = normalized;
        }
        else if (isBorrower && normalized == RentalStatuses.Cancelled && rental.Status == RentalStatuses.Pending)
        {
            rental.Status = RentalStatuses.Cancelled;
        }
        else if (isOwner && normalized == RentalStatuses.Completed && rental.Status == RentalStatuses.Approved)
        {
            rental.Status = RentalStatuses.Completed;
        }
        else
            throw new InvalidOperationException("Invalid status transition.");

        await _context.SaveChangesAsync(cancellationToken);
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
