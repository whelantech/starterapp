using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace StarterApp.Database.Models;

/// <summary>
/// This is the category model for the items rental
/// </summary>
[Table("categories")]
[PrimaryKey(nameof(Id))]
public class Category
{
    /// <summary>
    /// Primary key
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Category name - things like "Electronics", "Furniture", "Tools", etc.
    /// </summary>
    [Required]
    [MaxLength(50)]
    public string Name { get; set; } = string.Empty;

    /// <summary>
    /// Hex color code for visual identification (e.g., "#FF5733")
    /// </summary>
    [Required]
    [MaxLength(7)]
    public string ColorHex { get; set; } = "#808080"; // Default gray

    /// <summary>
    /// Optional description of category purpose - This will be used to describe the category to the user
    /// </summary>
    [MaxLength(200)]
    public string? Description { get; set; }

    /// <summary>
    /// Navigation property: All items in this category
    /// </summary>
    public List<Item> Items { get; set; } = new List<Item>();
}
