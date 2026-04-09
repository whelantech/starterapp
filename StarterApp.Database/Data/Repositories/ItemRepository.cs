using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Data;
using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Implementation of IItemRepository using Entity Framework Core and PostgreSQL.
/// Provides local database persistence for items and categories.
/// </summary>
public class ItemRepository : IItemRepository
{
    private readonly AppDbContext _context;

    public ItemRepository(AppDbContext context)
    {
        _context = context;
    }

    // ==================== Item Operations ====================

    /// <inheritdoc/>
    public async Task<ItemQueryResult> GetAllItemsAsync(int? categoryId = null, string? search = null, int page = 1, int pageSize = 20)
    {
        try
        {
            IQueryable<Item> query = _context.Items
                .Include(i => i.Category);

            if (categoryId.HasValue && categoryId.Value > 0)
            {
                query = query.Where(i => i.CategoryId == categoryId.Value);
            }

            var list = await query
                .OrderByDescending(i => i.CreatedAt)
                .ToListAsync();

            return new ItemQueryResult
            {
                Items = list,
                TotalItems = list.Count,
                Page = 1,
                PageSize = list.Count,
                TotalPages = 1
            };
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error loading items: {ex.Message}");
            throw;
        }
    }

    /// <inheritdoc/>
    public async Task<Item?> GetItemByIdAsync(int id)
    {
        try
        {
            return await _context.Items
                .AsNoTracking()
                .Include(i => i.Category)
                .FirstOrDefaultAsync(i => i.Id == id);
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error loading item {id}: {ex.Message}");
            throw;
        }
    }

    /// <inheritdoc/>
    public async Task<Item> CreateItemAsync(Item item)
    {
        try
        {
            item.CreatedAt = DateTime.UtcNow;

            _context.Items.Add(item);
            await _context.SaveChangesAsync();

            // Load category navigation property
            if (item.CategoryId.HasValue)
            {
                await _context.Entry(item)
                    .Reference(i => i.Category)
                    .LoadAsync();
            }

            return item;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error creating item: {ex.Message}");
            throw;
        }
    }

    /// <inheritdoc/>
    public async Task<Item?> UpdateItemAsync(Item item)
    {
        try
        {
            var existingItem = await _context.Items.FindAsync(item.Id);
            if (existingItem == null)
            {
                return null;
            }

            // Update properties
            existingItem.Title = item.Title;
            existingItem.Description = item.Description;
            existingItem.DailyRate = item.DailyRate;
            existingItem.CategoryId = item.CategoryId;
            existingItem.IsAvailable = item.IsAvailable;
            existingItem.ImageUrl = item.ImageUrl;

            await _context.SaveChangesAsync();

            // Reload category
            await _context.Entry(existingItem)
                .Reference(i => i.Category)
                .LoadAsync();

            return existingItem;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error updating item {item.Id}: {ex.Message}");
            throw;
        }
    }

    /// <inheritdoc/>
    public async Task<bool> DeleteItemAsync(int id)
    {
        try
        {
            var item = await _context.Items.FindAsync(id);
            if (item == null)
            {
                return false;
            }

            _context.Items.Remove(item);
            await _context.SaveChangesAsync();

            return true;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error deleting item {id}: {ex.Message}");
            throw;
        }
    }

    // ==================== Category Operations ====================

    /// <inheritdoc/>
    public async Task<List<Category>> GetAllCategoriesAsync()
    {
        try
        {
            return await _context.Categories
                .OrderBy(c => c.Name)
                .ToListAsync();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error loading categories: {ex.Message}");
            throw;
        }
    }

    /// <inheritdoc/>
    public async Task<Category?> GetCategoryByIdAsync(int id)
    {
        try
        {
            return await _context.Categories
                .Include(c => c.Items)
                .FirstOrDefaultAsync(c => c.Id == id);
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error loading category {id}: {ex.Message}");
            throw;
        }
    }

    /// <inheritdoc/>
    public async Task<Category> CreateCategoryAsync(Category category)
    {
        try
        {
            _context.Categories.Add(category);
            await _context.SaveChangesAsync();

            return category;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error creating category: {ex.Message}");
            throw;
        }
    }

    /// <inheritdoc/>
    public async Task<Category?> UpdateCategoryAsync(Category category)
    {
        try
        {
            var existingCategory = await _context.Categories.FindAsync(category.Id);
            if (existingCategory == null)
            {
                return null;
            }

            existingCategory.Name = category.Name;
            existingCategory.ColorHex = category.ColorHex;
            existingCategory.Description = category.Description;

            await _context.SaveChangesAsync();

            return existingCategory;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error updating category {category.Id}: {ex.Message}");
            throw;
        }
    }

    /// <inheritdoc/>
    public async Task<bool> DeleteCategoryAsync(int id)
    {
        try
        {
            var category = await _context.Categories.FindAsync(id);
            if (category == null)
            {
                return false;
            }

            _context.Categories.Remove(category);
            await _context.SaveChangesAsync();

            return true;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error deleting category {id}: {ex.Message}");
            throw;
        }
    }
}