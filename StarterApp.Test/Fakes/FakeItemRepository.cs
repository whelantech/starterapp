using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace StarterApp.Test.Fakes;

/// <summary>In-memory <see cref="IItemRepository"/> for ViewModel tests.</summary>
public sealed class FakeItemRepository : IItemRepository
{
    public List<Item> Items { get; } = new();
    public List<Category> Categories { get; } = new();
    public bool DeleteThrowsNotImplemented { get; set; }

    public Task<ItemQueryResult> GetAllItemsAsync(int? categoryId = null, string? search = null, int page = 1,
        int pageSize = 20)
    {
        IEnumerable<Item> q = Items;
        if (categoryId is > 0)
            q = q.Where(i => i.CategoryId == categoryId);
        if (!string.IsNullOrWhiteSpace(search))
        {
            var s = search.Trim();
            q = q.Where(i =>
                i.Title.Contains(s, StringComparison.OrdinalIgnoreCase)
                || i.Description.Contains(s, StringComparison.OrdinalIgnoreCase));
        }

        var list = q.ToList();
        return Task.FromResult(new ItemQueryResult
        {
            Items = list,
            TotalItems = list.Count,
            Page = 1,
            PageSize = list.Count,
            TotalPages = 1
        });
    }

    public Task<Item?> GetItemByIdAsync(int id) =>
        Task.FromResult(Items.FirstOrDefault(i => i.Id == id));

    public Task<Item> CreateItemAsync(Item item)
    {
        item.Id = Items.Count == 0 ? 1 : Items.Max(i => i.Id) + 1;
        Items.Add(item);
        return Task.FromResult(item);
    }

    public Task<Item?> UpdateItemAsync(Item item)
    {
        var ix = Items.FindIndex(i => i.Id == item.Id);
        if (ix < 0)
            return Task.FromResult<Item?>(null);
        Items[ix] = item;
        return Task.FromResult<Item?>(item);
    }

    public Task<bool> DeleteItemAsync(int id)
    {
        if (DeleteThrowsNotImplemented)
            throw new NotImplementedException();
        var ix = Items.FindIndex(i => i.Id == id);
        if (ix < 0)
            return Task.FromResult(false);
        Items.RemoveAt(ix);
        return Task.FromResult(true);
    }

    public Task<List<Category>> GetAllCategoriesAsync() =>
        Task.FromResult(Categories.OrderBy(c => c.Name).ToList());

    public Task<Category?> GetCategoryByIdAsync(int id) =>
        Task.FromResult(Categories.FirstOrDefault(c => c.Id == id));

    public Task<Category> CreateCategoryAsync(Category category)
    {
        category.Id = Categories.Count == 0 ? 1 : Categories.Max(c => c.Id) + 1;
        Categories.Add(category);
        return Task.FromResult(category);
    }

    public Task<Category?> UpdateCategoryAsync(Category category) => throw new NotImplementedException();

    public Task<bool> DeleteCategoryAsync(int id) => throw new NotImplementedException();
}
