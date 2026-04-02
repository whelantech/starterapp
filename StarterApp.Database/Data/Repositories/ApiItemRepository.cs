using System.Net.Http.Json;
using System.Text.Json;
using System.Text.Json.Serialization;
using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Repository using REST API for data access.
/// </summary>
public class ApiItemRepository : IItemRepository
{
    private readonly HttpClient _httpClient;

    private const string ItemsEndpoint = "items";
    private const string CategoriesEndpoint = "categories";

    /// <summary>
    /// Temporary stand-in coordinates until location is implemented in the app.
    /// The API requires latitude/longitude on create; use a neutral default (e.g. Edinburgh city centre).
    /// </summary>
    private const double PlaceholderLatitude = 55.9533;

    private const double PlaceholderLongitude = -3.1883;

    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNameCaseInsensitive = true,
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase
    };

    public ApiItemRepository(HttpClient httpClient)
    {
        _httpClient = httpClient;
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

        var url = $"{ItemsEndpoint}?{string.Join("&", qs)}";
        var wrapper = await _httpClient.GetFromJsonAsync<ItemsListApiResponse>(url, JsonOptions);
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
        throw new NotImplementedException("API integration pending");
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

        using var response = await _httpClient.PostAsJsonAsync(ItemsEndpoint, requestBody, JsonOptions);

        if (!response.IsSuccessStatusCode)
        {
            var err = await response.Content.ReadFromJsonAsync<ApiErrorBody>(JsonOptions);
            var msg = err?.Message ?? err?.Error ?? response.ReasonPhrase ?? "Request failed";
            throw new InvalidOperationException(msg);
        }

        var created = await response.Content.ReadFromJsonAsync<CreateItemApiResponse>(JsonOptions);
        if (created is null)
            throw new InvalidOperationException("Empty response from server.");

        return MapToItem(created);
    }

    /// <inheritdoc />
    public async Task<Item?> UpdateItemAsync(Item item)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public async Task<bool> DeleteItemAsync(int id)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public async Task<List<Category>> GetAllCategoriesAsync()
    {
        var wrapper = await _httpClient.GetFromJsonAsync<CategoriesApiResponse>(CategoriesEndpoint, JsonOptions);
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
    public async Task<Category?> GetCategoryByIdAsync(int id)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public async Task<Category> CreateCategoryAsync(Category category)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public async Task<Category?> UpdateCategoryAsync(Category category)
    {
        throw new NotImplementedException("API integration pending");
    }

    /// <inheritdoc />
    public async Task<bool> DeleteCategoryAsync(int id)
    {
        throw new NotImplementedException("API integration pending");
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

    private sealed record ApiErrorBody(string? Error, string? Message);

    private sealed record CategoriesApiResponse(List<CategoryApiDto> Categories);

    private sealed record CategoryApiDto(int Id, string Name, string? Slug, int ItemCount);

    private sealed record ItemsListApiResponse(
        List<ItemListApiDto> Items,
        int TotalItems,
        int Page,
        int PageSize,
        int TotalPages);

    private sealed record ItemListApiDto(
        int Id,
        string Title,
        string? Description,
        decimal DailyRate,
        int CategoryId,
        [property: JsonPropertyName("category")] string? CategoryName,
        int OwnerId,
        string? OwnerName,
        double? OwnerRating,
        bool IsAvailable,
        double? AverageRating,
        string? ImageUrl,
        DateTime CreatedAt);

    private sealed record CreateItemApiResponse(
        int Id,
        string Title,
        string? Description,
        decimal DailyRate,
        int CategoryId,
        [property: System.Text.Json.Serialization.JsonPropertyName("category")] string? CategoryName,
        int OwnerId,
        string? OwnerName,
        double Latitude,
        double Longitude,
        bool IsAvailable,
        DateTime CreatedAt);
}
