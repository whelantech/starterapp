using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Result of a paged item query (REST API returns pagination; local DB returns a single logical page).
/// </summary>
public sealed class ItemQueryResult
{
    public List<Item> Items { get; init; } = new();

    public int TotalItems { get; init; }

    public int Page { get; init; }

    public int PageSize { get; init; }

    public int TotalPages { get; init; }
}

/// <summary>
/// Repository interface for Item and Category data access.
/// Abstracts the data source (local database, REST API, cache, etc.)
/// </summary>
public interface IItemRepository
{
    // ==================== Item Operations ====================

    /// <summary>
    /// Get items with optional filters. Local DB ignores <paramref name="search"/>, <paramref name="page"/>, and <paramref name="pageSize"/>.
    /// </summary>
    /// <param name="categoryId">Filter by category ID. Null or 0 returns all categories.</param>
    /// <param name="search">Search in title and description (shared API only).</param>
    /// <param name="page">Page number (1-based; API default 1).</param>
    /// <param name="pageSize">Page size (API max 100).</param>
    Task<ItemQueryResult> GetAllItemsAsync(int? categoryId = null, string? search = null, int page = 1, int pageSize = 20);

    /// <summary>
    /// Get a single item by ID
    /// </summary>
    /// <param name="id">Item ID</param>
    /// <returns>Item with category information, or null if not found</returns>
    Task<Item?> GetItemByIdAsync(int id);

    /// <summary>
    /// Create a new item
    /// </summary>
    /// <param name="item">Item to create (Id will be generated)</param>
    /// <returns>Created item with generated ID</returns>
    Task<Item> CreateItemAsync(Item item);

    /// <summary>
    /// Update an existing item
    /// </summary>
    /// <param name="item">Item with updated properties</param>
    /// <returns>Updated item, or null if not found</returns>
    Task<Item?> UpdateItemAsync(Item item);

    /// <summary>
    /// Delete an item by ID
    /// </summary>
    /// <param name="id">Item ID to delete</param>
    /// <returns>True if deleted, false if not found</returns>
    Task<bool> DeleteItemAsync(int id);


    // ==================== Category Operations ====================

    /// <summary>
    /// Get all categories
    /// </summary>
    /// <returns>List of all categories ordered by name</returns>
    Task<List<Category>> GetAllCategoriesAsync();

    /// <summary>
    /// Get a single category by ID
    /// </summary>
    /// <param name="id">Category ID</param>
    /// <returns>Category or null if not found</returns>
    Task<Category?> GetCategoryByIdAsync(int id);

    /// <summary>
    /// Create a new category
    /// </summary>
    /// <param name="category">Category to create</param>
    /// <returns>Created category with generated ID</returns>
    Task<Category> CreateCategoryAsync(Category category);

    /// <summary>
    /// Update an existing category
    /// </summary>
    /// <param name="category">Category with updated properties</param>
    /// <returns>Updated category, or null if not found</returns>
    Task<Category?> UpdateCategoryAsync(Category category);

    /// <summary>
    /// Delete a category by ID
    /// </summary>
    /// <param name="id">Category ID to delete</param>
    /// <returns>True if deleted, false if not found</returns>
    /// <remarks>
    /// Items in this category will have CategoryId set to NULL (based on DbContext configuration)
    /// </remarks>
    Task<bool> DeleteCategoryAsync(int id);
}