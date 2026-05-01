using System.Net;
using System.Text.Json.Serialization;

namespace StarterApp.Database.Api;

/// <summary>
/// HTTP access to the shared SET09102 REST API. Uses the app’s shared <see cref="HttpClient"/> (Bearer set by auth).
/// </summary>
public interface IApiService
{
    Task<(HttpStatusCode Status, TokenApiResponse? Token, ApiErrorDto? Error)> PostAuthTokenAsync(
        string email,
        string password,
        CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, ApiErrorDto? Error)> PostAuthRegisterAsync(
        RegisterApiRequest request,
        CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, UserMeApiDto? User, string? RawError)> GetUsersMeAsync(
        CancellationToken cancellationToken = default);

    Task<ItemsListApiResponse?> GetItemsPagedAsync(string queryString, CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, ItemDetailApiDto? Item)> GetItemByIdAsync(int id, CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, CreateItemApiResponse? Created, string? Error)> PostItemAsync(
        object body,
        CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, ItemDetailApiDto? Item, string? Error)> PutItemAsync(
        int id,
        object body,
        CancellationToken cancellationToken = default);

    Task<CategoriesApiResponse?> GetCategoriesAsync(CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, RentalCreateApiDto? Rental, string? Error)> PostRentalAsync(
        object body,
        CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, RentalsListApiDto? Wrapper, string? Error)> GetRentalsListAsync(
        string incomingOrOutgoingSegment,
        string? statusFilter,
        CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, RentalDetailApiDto? Rental)> GetRentalByIdAsync(
        int rentalId,
        CancellationToken cancellationToken = default);

    Task<(HttpStatusCode Status, string? Error)> PatchRentalStatusAsync(
        int rentalId,
        object body,
        CancellationToken cancellationToken = default);
}

// --- Wire JSON shapes for <see cref="IApiService"/> (same assembly / namespace as domain gateways). ---

/// <summary>Standard error JSON shape from the shared API.</summary>
public sealed record ApiErrorDto(string? Error, string? Message);

public sealed record TokenApiResponse(string Token, DateTime ExpiresAt, int UserId);

public sealed record RegisterApiRequest(string FirstName, string LastName, string Email, string Password);

/// <summary>Response body for <c>GET users/me</c>.</summary>
public sealed record UserMeApiDto(
    int Id,
    string Email,
    string FirstName,
    string LastName,
    int? AverageRating,
    int? ItemsListed,
    int? RentalsCompleted,
    DateTime CreatedAt,
    DateTime UpdatedAt,
    DateTime DeletedAt,
    bool IsActive);

public sealed record CategoriesApiResponse(List<CategoryApiDto> Categories);

public sealed record CategoryApiDto(int Id, string Name, string? Slug, int ItemCount);

public sealed record ItemsListApiResponse(
    List<ItemListApiDto> Items,
    int TotalItems,
    int Page,
    int PageSize,
    int TotalPages);

public sealed record ItemDetailApiDto(
    int Id,
    string Title,
    string? Description,
    decimal DailyRate,
    int CategoryId,
    [property: JsonPropertyName("category")] string? CategoryName,
    int OwnerId,
    string? OwnerName,
    double? OwnerRating,
    double Latitude,
    double Longitude,
    bool IsAvailable,
    double? AverageRating,
    int? TotalReviews,
    DateTime CreatedAt);

public sealed record ItemListApiDto(
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

public sealed record CreateItemApiResponse(
    int Id,
    string Title,
    string? Description,
    decimal DailyRate,
    int CategoryId,
    [property: JsonPropertyName("category")] string? CategoryName,
    int OwnerId,
    string? OwnerName,
    double Latitude,
    double Longitude,
    bool IsAvailable,
    DateTime CreatedAt);

public sealed record RentalCreateApiDto(
    int Id,
    int ItemId,
    string ItemTitle,
    int BorrowerId,
    string BorrowerName,
    int OwnerId,
    string OwnerName,
    string StartDate,
    string EndDate,
    string Status,
    decimal TotalPrice,
    DateTime CreatedAt);

public sealed record RentalsListApiDto(List<RentalListItemApiDto>? Rentals, int TotalRentals);

/// <summary>Loose shape so API additions/optionals do not break deserialization.</summary>
public sealed record RentalListItemApiDto(
    int Id,
    int ItemId,
    string? ItemTitle,
    int BorrowerId,
    string? BorrowerName,
    int OwnerId,
    string? OwnerName,
    string? StartDate,
    string? EndDate,
    string? Status,
    decimal? TotalPrice,
    DateTime? CreatedAt);

public sealed record RentalDetailApiDto(
    int Id,
    int ItemId,
    string ItemTitle,
    string? ItemDescription,
    int BorrowerId,
    string BorrowerName,
    int OwnerId,
    string OwnerName,
    string StartDate,
    string EndDate,
    string Status,
    decimal TotalPrice,
    DateTime RequestedAt,
    string? Comments = null);
