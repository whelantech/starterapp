using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Workflow;

namespace StarterApp.Database.Models;

/// <summary>
/// A rental request for an item (persisted locally; API responses map into the same shape).
/// </summary>
[Table("Rentals")]
[PrimaryKey(nameof(Id))]
public class Rental
{
    public int Id { get; set; }

    public int ItemId { get; set; }

    [ForeignKey(nameof(ItemId))]
    public Item? Item { get; set; }

    /// <summary>
    /// User requesting the rental (borrower).
    /// </summary>
    public int BorrowerUserId { get; set; }

    [ForeignKey(nameof(BorrowerUserId))]
    public User? Borrower { get; set; }

    public DateOnly StartDate { get; set; }

    public DateOnly EndDate { get; set; }

    [Required]
    [MaxLength(50)]
    public string Status { get; set; } = RentalStatusValues.Requested;

    public int TotalPrice { get; set; }

    [MaxLength(2000)]
    public string? Comments { get; set; }

    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

    // ---- Denormalized / API-only (not stored in PostgreSQL when loaded from API mapping) ----

    [NotMapped]
    public string? ItemTitle { get; set; }

    /// <summary>From API detail or local item; not a dedicated column.</summary>
    [NotMapped]
    public string? ItemDescription { get; set; }

    [NotMapped]
    public string? BorrowerName { get; set; }

    [NotMapped]
    public int? OwnerId { get; set; }

    [NotMapped]
    public string? OwnerName { get; set; }

    [NotMapped]
    public DateTime? RequestedAt { get; set; }
}

/// <summary>
/// Rental workflow states (local DB; align with API strings where possible).
/// </summary>
public static class RentalStatuses
{
    public const string Pending = "Pending";
    public const string Approved = "Approved";
    public const string Rejected = "Rejected";
    public const string OutForRent = "OutForRent";
    public const string Returned = "Returned";
    public const string Completed = "Completed";
    public const string Cancelled = "Cancelled";
}
