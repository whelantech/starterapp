using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Rental data access (local PostgreSQL or shared REST API).
/// </summary>
public interface IRentalRepository
{
    /// <summary>
    /// Create a rental request. Caller supplies the borrower user id (from authentication).
    /// </summary>
    Task<Rental> CreateRequestAsync(
        int itemId,
        int borrowerUserId,
        DateOnly start,
        DateOnly end,
        string? comments,
        CancellationToken cancellationToken = default);

    /// <summary>
    /// Rentals for items the user owns (incoming). <paramref name="ownerUserId"/> filters the local DB; API mode uses JWT and ignores this for filtering (still pass current user id for consistency).
    /// </summary>
    Task<IReadOnlyList<Rental>> GetIncomingAsync(
        int ownerUserId,
        string? statusFilter = null,
        CancellationToken cancellationToken = default);

    /// <summary>
    /// Rentals where the user is the borrower (outgoing).
    /// </summary>
    Task<IReadOnlyList<Rental>> GetOutgoingAsync(
        int borrowerUserId,
        string? statusFilter = null,
        CancellationToken cancellationToken = default);

    /// <summary>
    /// Single rental if it exists and <paramref name="currentUserId"/> is owner or borrower.
    /// </summary>
    Task<Rental?> GetByIdAsync(int rentalId, int currentUserId, CancellationToken cancellationToken = default);

    /// <summary>
    /// Update status (owner/borrower rules enforced per backend).
    /// </summary>
    Task UpdateStatusAsync(
        int rentalId,
        int actingUserId,
        string newStatus,
        CancellationToken cancellationToken = default);
}
