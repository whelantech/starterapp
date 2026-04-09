using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace StarterApp.Database.Models;

/// <summary>
/// Represents a single Item with Title, Description, Category, Daily Rate, Availability, Location etc. 
/// </summary>
[Table("Items")]
[PrimaryKey(nameof(Id))]
public class Item
{
    /// <summary>
    /// Primary key
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Item Title/Name
    /// </summary>
    [Required]
    [MaxLength(100)]
    public string Title { get; set; } = string.Empty;

    /// <summary>
    /// Full Item description (can be large)
    /// </summary>
    [Required]
    public string Description { get; set; } = string.Empty;

    /// <summary>
    /// Daily Rate for the item
    /// </summary>
    [Required]
    public int DailyRate { get; set; } = 0;

    /// <summary>
    /// Foreign key to Category
    /// </summary>
    public int? CategoryId { get; set; }

    /// <summary>
    /// Navigation property: The category this item belongs to
    /// </summary>
    [ForeignKey(nameof(CategoryId))]
    public Category? Category { get; set; }

    /// <summary>
    /// ID of Owner of the item
    /// </summary>
    public int? OwnerId { get; set; }

    /// <summary>
    /// Name of the Owner of the item
    /// </summary>
    [Required]
    [MaxLength(100)]
    public string OwnerName { get; set; } = string.Empty;

    /// <summary>
    /// Availability of the item
    /// </summary>
    public Boolean IsAvailable { get; set; } = true;

    /// <summary>
    /// Item Rating - Average rating of the item
    /// </summary>
    public int? AverageRating { get; set; } = 0;

    /// <summary>
    /// The URL of the image of the item
    /// </summary>
    public int? ImageUrl { get; set; }

    /// <summary>
    /// When the item was created
    /// </summary>
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

    /// <summary>
    /// Last known latitude from API (not stored in local PostgreSQL schema).
    /// </summary>
    [NotMapped]
    public double? Latitude { get; set; }

    /// <summary>
    /// Last known longitude from API (not stored in local PostgreSQL schema).
    /// </summary>
    [NotMapped]
    public double? Longitude { get; set; }

    /// <summary>
    /// Computed property: Preview of Description for list views
    /// </summary>
    [NotMapped]
    public string DescriptionPreview => Description.Length > 100
        ? Description.Substring(0, 100) + "..."
        : Description;
}
