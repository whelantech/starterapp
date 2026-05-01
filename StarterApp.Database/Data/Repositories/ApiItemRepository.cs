using StarterApp.Database.Api;
using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Repository using REST API for data access.
/// </summary>
public class ApiItemRepository : IItemRepository
{
    private readonly IApiService _api;

    /// <summary>
    /// Temporary stand-in coordinates until location is implemented in the app.
    /// The API requires latitude/longitude on create; use a neutral default (e.g. Edinburgh city centre).
    /// </summary>
    private const double PlaceholderLatitude = 55.9533;

    private const double PlaceholderLongitude = -3.1883;

    public ApiItemRepository(IApiService api)
    {
        _api = api;
    }

    /// <inheritdoc />
    public async Task<ItemQueryResult> GetAllItemsAsync(int? categoryId = null, string? search = null, int page = 1, int pageSize = 20)
    {
        pageSize = Math.Clamp(pageSize, 1, 100);
        page = Math.Max(1, page);

        string? categorySlug = null;
        if (categoryId is > 0)
        {
            var cats = await GetAllCategoriesAsync();
            categorySlug = cats.FirstOrDefault(c => c.Id == categoryId)?.Slug;
        }

        var qs = new List<string>();
        if (!string.IsNullOrWhiteSpace(categorySlug))
            qs.Add($"category={Uri.EscapeDataString(categorySlug)}");
        if (!string.IsNullOrWhiteSpace(search))
            qs.Add($"search={Uri.EscapeDataString(search.Trim())}");
        qs.Add($"page={page}");
        qs.Add($"pageSize={pageSize}");

        var queryString = string.Join("&", qs);
        var wrapper = await _api.GetItemsPagedAsync(queryString);
        if (wrapper?.Items is null)
        {
            return new ItemQueryResult
            {
                Items = new List<Item>(),
                TotalItems = 0,
                Page = page,
                PageSize = pageSize,
                TotalPages = 0
            };
        }

        var items = wrapper.Items.Select(MapListItemToItem).ToList();
        return new ItemQueryResult
        {
            Items = items,
            TotalItems = wrapper.TotalItems,
            Page = wrapper.Page,
            PageSize = wrapper.PageSize,
            TotalPages = wrapper.TotalPages
        };
    }

    /// <inheritdoc />
    public async Task<Item?> GetItemByIdAsync(int id)
    {
        var (_, item) = await _api.GetItemByIdAsync(id);
        return item is null ? null : MapDetailToItem(item);
    }

    /// <inheritdoc />
    public async Task<Item> CreateItemAsync(Item item)
    {
        if (string.IsNullOrWhiteSpace(item.Title))
            throw new ArgumentException("Title is required.", nameof(item));

        if (item.CategoryId is null or <= 0)
            throw new ArgumentException("A valid category is required.", nameof(item));

        if (item.DailyRate <= 0)
            throw new ArgumentException("Daily rate must be greater than 0.", nameof(item));

        var requestBody = new
        {
            title = item.Title.Trim(),
            description = string.IsNullOrWhiteSpace(item.Description) ? null : item.Description.Trim(),
            dailyRate = (decimal)item.DailyRate,
            categoryId = item.CategoryId.Value,
            latitude = PlaceholderLatitude,
            longitude = PlaceholderLongitude
        };

        var (_, created, error) = await _api.PostItemAsync(requestBody);

        if (created is null)
            throw new InvalidOperationException(error ?? "Request failed");

        return MapToItem(created);
    }

    /// <inheritdoc />
    public async Task<Item?> UpdateItemAsync(Item item)
    {
        if (string.IsNullOrWhiteSpace(item.Title))
            throw new ArgumentException("Title is required.", nameof(item));

        if (item.CategoryId is null or <= 0)
            throw new ArgumentException("A valid category is required.", nameof(item));

        if (item.DailyRate <= 0)
            throw new ArgumentException("Daily rate must be greater than 0.", nameof(item));

        var lat = item.Latitude ?? PlaceholderLatitude;
        var lon = item.Longitude ?? PlaceholderLongitude;

        var requestBody = new
        {
            title = item.Title.Trim(),
            description = string.IsNullOrWhiteSpace(item.Description) ? null : item.Description.Trim(),
            dailyRate = (decimal)item.DailyRate,
            categoryId = item.CategoryId.Value,
            latitude = lat,
            longitude = lon,
            isAvailable = item.IsAvailable
        };

        var (status, updated, error) = await _api.PutItemAsync(item.Id, requestBody);

        if (status == System.Net.HttpStatusCode.NotFound)
            return null;

        if (updated is null)
            throw new InvalidOperationException(error ?? "Request failed");

        return MapDetailToItem(updated);
    }

    /// <inheritdoc />
    public Task<bool> DeleteItemAsync(int id)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public async Task<List<Category>> GetAllCategoriesAsync()
    {
        var wrapper = await _api.GetCategoriesAsync();
        if (wrapper?.Categories is null)
            return new List<Category>();

        return wrapper.Categories.Select(c => new Category
        {
            Id = c.Id,
            Name = c.Name,
            ColorHex = "#808080",
            Description = null,
            Slug = c.Slug
        }).ToList();
    }

    /// <inheritdoc />
    public Task<Category?> GetCategoryByIdAsync(int id)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public Task<Category> CreateCategoryAsync(Category category)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public Task<Category?> UpdateCategoryAsync(Category category)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public Task<bool> DeleteCategoryAsync(int id)
    {
        throw new NotImplementedException("API integration pending");
    }

    private static Item MapDetailToItem(ItemDetailApiDto dto)
    {
        return new Item
        {
            Id = dto.Id,
            Title = dto.Title,
            Description = dto.Description ?? string.Empty,
            DailyRate = (int)Math.Round(dto.DailyRate, MidpointRounding.AwayFromZero),
            CategoryId = dto.CategoryId,
            Category = string.IsNullOrEmpty(dto.CategoryName)
                ? null
                : new Category { Id = dto.CategoryId, Name = dto.CategoryName, ColorHex = "#808080" },
            OwnerId = dto.OwnerId,
            OwnerName = dto.OwnerName ?? string.Empty,
            IsAvailable = dto.IsAvailable,
            AverageRating = dto.AverageRating is null
                ? null
                : (int)Math.Round(dto.AverageRating.Value, MidpointRounding.AwayFromZero),
            CreatedAt = dto.CreatedAt,
            Latitude = dto.Latitude,
            Longitude = dto.Longitude
        };
    }

    private static Item MapListItemToItem(ItemListApiDto dto)
    {
        return new Item
        {
            Id = dto.Id,
            Title = dto.Title,
            Description = dto.Description ?? string.Empty,
            DailyRate = (int)Math.Round(dto.DailyRate, MidpointRounding.AwayFromZero),
            CategoryId = dto.CategoryId,
            Category = string.IsNullOrEmpty(dto.CategoryName)
                ? null
                : new Category { Id = dto.CategoryId, Name = dto.CategoryName ?? string.Empty, ColorHex = "#808080" },
            OwnerId = dto.OwnerId,
            OwnerName = dto.OwnerName ?? string.Empty,
            IsAvailable = dto.IsAvailable,
            AverageRating = dto.AverageRating is null
                ? null
                : (int)Math.Round(dto.AverageRating.Value, MidpointRounding.AwayFromZero),
            CreatedAt = dto.CreatedAt
        };
    }

    private static Item MapToItem(CreateItemApiResponse dto)
    {
        return new Item
        {
            Id = dto.Id,
            Title = dto.Title,
            Description = dto.Description ?? string.Empty,
            DailyRate = (int)Math.Round(dto.DailyRate, MidpointRounding.AwayFromZero),
            CategoryId = dto.CategoryId,
            Category = string.IsNullOrEmpty(dto.CategoryName)
                ? null
                : new Category { Id = dto.CategoryId, Name = dto.CategoryName },
            OwnerId = dto.OwnerId,
            OwnerName = dto.OwnerName ?? string.Empty,
            IsAvailable = dto.IsAvailable,
            CreatedAt = dto.CreatedAt
        };
    }
}
