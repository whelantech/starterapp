using System.Net;
using System.Net.Http.Json;
using System.Text.Json;
using System.Text.Json.Serialization;
using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Rental access via the shared SET09102 REST API (Bearer token on HttpClient).
/// </summary>
public class ApiRentalRepository : IRentalRepository
{
    private readonly HttpClient _httpClient;

    private const string RentalsEndpoint = "rentals";

    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNameCaseInsensitive = true,
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase
    };

    public ApiRentalRepository(HttpClient httpClient)
    {
        _httpClient = httpClient;
    }

    /// <inheritdoc />
    public async Task<Rental> CreateRequestAsync(
        int itemId,
        int borrowerUserId,
        DateOnly start,
        DateOnly end,
        string? comments,
        CancellationToken cancellationToken = default)
    {
        _ = borrowerUserId;
        _ = comments;

        if (end < start)
            throw new ArgumentException("End date must be on or after start date.");

        var body = new
        {
            itemId,
            startDate = start.ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture),
            endDate = end.ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture)
        };

        using var response = await _httpClient.PostAsJsonAsync(RentalsEndpoint, body, JsonOptions, cancellationToken);

        if (response.StatusCode == HttpStatusCode.BadRequest)
        {
            var err = await ReadErrorAsync(response, cancellationToken);
            throw new InvalidOperationException(err ?? "Could not create rental.");
        }

        if (!response.IsSuccessStatusCode)
        {
            var err = await ReadErrorAsync(response, cancellationToken);
            throw new InvalidOperationException(err ?? response.ReasonPhrase ?? "Could not create rental.");
        }

        var created = await response.Content.ReadFromJsonAsync<RentalCreateApiDto>(JsonOptions, cancellationToken);
        if (created is null)
            throw new InvalidOperationException("Empty response from server.");

        return MapFromCreate(created);
    }

    /// <inheritdoc />
    public async Task<IReadOnlyList<Rental>> GetIncomingAsync(
        int ownerUserId,
        string? statusFilter = null,
        CancellationToken cancellationToken = default)
    {
        _ = ownerUserId;
        var url = BuildListUrl("incoming", statusFilter);
        return await GetRentalListAsync(url, cancellationToken);
    }

    /// <inheritdoc />
    public async Task<IReadOnlyList<Rental>> GetOutgoingAsync(
        int borrowerUserId,
        string? statusFilter = null,
        CancellationToken cancellationToken = default)
    {
        _ = borrowerUserId;
        var url = BuildListUrl("outgoing", statusFilter);
        return await GetRentalListAsync(url, cancellationToken);
    }

    private async Task<IReadOnlyList<Rental>> GetRentalListAsync(string url, CancellationToken cancellationToken)
    {
        using var response = await _httpClient.GetAsync(url, cancellationToken);
        if (response.StatusCode == HttpStatusCode.Unauthorized)
            throw new UnauthorizedAccessException("Sign in again to load rentals.");

        if (!response.IsSuccessStatusCode)
        {
            var err = await ReadErrorAsync(response, cancellationToken);
            throw new InvalidOperationException(err ?? $"Could not load rentals ({(int)response.StatusCode}).");
        }

        var json = await response.Content.ReadAsStringAsync(cancellationToken);
        if (string.IsNullOrWhiteSpace(json))
            return Array.Empty<Rental>();

        try
        {
            var wrapper = JsonSerializer.Deserialize<RentalsListApiDto>(json, JsonOptions);
            if (wrapper?.Rentals is null || wrapper.Rentals.Count == 0)
                return Array.Empty<Rental>();

            var list = new List<Rental>();
            foreach (var dto in wrapper.Rentals)
            {
                try
                {
                    list.Add(MapFromListItemSafe(dto));
                }
                catch
                {
                    // Skip malformed rows instead of failing the whole list.
                }
            }

            return list;
        }
        catch (JsonException ex)
        {
            throw new InvalidOperationException("Could not parse rentals from the server.", ex);
        }
    }

    /// <inheritdoc />
    public async Task<Rental?> GetByIdAsync(int rentalId, int currentUserId, CancellationToken cancellationToken = default)
    {
        _ = currentUserId;
        using var response = await _httpClient.GetAsync($"{RentalsEndpoint}/{rentalId}", cancellationToken);
        if (response.StatusCode == HttpStatusCode.NotFound)
            return null;
        if (response.StatusCode == HttpStatusCode.Forbidden || response.StatusCode == HttpStatusCode.Unauthorized)
            return null;
        if (!response.IsSuccessStatusCode)
        {
            var err = await ReadErrorAsync(response, cancellationToken);
            throw new InvalidOperationException(err ?? "Could not load rental.");
        }

        var dto = await response.Content.ReadFromJsonAsync<RentalDetailApiDto>(JsonOptions, cancellationToken);
        return dto is null ? null : MapFromDetail(dto);
    }

    /// <inheritdoc />
    public async Task UpdateStatusAsync(
        int rentalId,
        int actingUserId,
        string newStatus,
        CancellationToken cancellationToken = default)
    {
        _ = actingUserId;
        var body = new { status = newStatus.Trim() };
        using var response =
            await _httpClient.PatchAsJsonAsync($"{RentalsEndpoint}/{rentalId}/status", body, JsonOptions, cancellationToken);

        if (!response.IsSuccessStatusCode)
        {
            var err = await ReadErrorAsync(response, cancellationToken);
            throw new InvalidOperationException(err ?? "Could not update rental status.");
        }
    }

    private static string BuildListUrl(string segment, string? statusFilter)
    {
        var path = $"{RentalsEndpoint}/{segment}";
        if (string.IsNullOrWhiteSpace(statusFilter))
            return path;
        return $"{path}?status={Uri.EscapeDataString(statusFilter.Trim())}";
    }

    private static Rental MapFromCreate(RentalCreateApiDto dto)
    {
        return new Rental
        {
            Id = dto.Id,
            ItemId = dto.ItemId,
            ItemTitle = dto.ItemTitle,
            BorrowerUserId = dto.BorrowerId,
            BorrowerName = dto.BorrowerName,
            OwnerId = dto.OwnerId,
            OwnerName = dto.OwnerName,
            StartDate = ParseDateOnly(dto.StartDate),
            EndDate = ParseDateOnly(dto.EndDate),
            Status = NormalizeStatus(dto.Status),
            TotalPrice = (int)Math.Round(dto.TotalPrice, MidpointRounding.AwayFromZero),
            CreatedAt = dto.CreatedAt,
            Comments = null
        };
    }

    private static Rental MapFromListItemSafe(RentalListItemApiDto dto)
    {
        return new Rental
        {
            Id = dto.Id,
            ItemId = dto.ItemId,
            ItemTitle = dto.ItemTitle ?? string.Empty,
            BorrowerUserId = dto.BorrowerId,
            BorrowerName = dto.BorrowerName ?? string.Empty,
            OwnerId = dto.OwnerId,
            OwnerName = dto.OwnerName ?? string.Empty,
            StartDate = ParseDateOnlySafe(dto.StartDate),
            EndDate = ParseDateOnlySafe(dto.EndDate),
            Status = NormalizeStatus(dto.Status),
            TotalPrice = dto.TotalPrice is null
                ? 0
                : (int)Math.Round(dto.TotalPrice.Value, MidpointRounding.AwayFromZero),
            CreatedAt = dto.CreatedAt ?? DateTime.UtcNow
        };
    }

    private static Rental MapFromDetail(RentalDetailApiDto dto)
    {
        return new Rental
        {
            Id = dto.Id,
            ItemId = dto.ItemId,
            ItemTitle = dto.ItemTitle,
            ItemDescription = dto.ItemDescription,
            BorrowerUserId = dto.BorrowerId,
            BorrowerName = dto.BorrowerName,
            OwnerId = dto.OwnerId,
            OwnerName = dto.OwnerName,
            StartDate = ParseDateOnly(dto.StartDate),
            EndDate = ParseDateOnly(dto.EndDate),
            Status = NormalizeStatus(dto.Status),
            TotalPrice = (int)Math.Round(dto.TotalPrice, MidpointRounding.AwayFromZero),
            RequestedAt = dto.RequestedAt,
            CreatedAt = dto.RequestedAt,
            Comments = string.IsNullOrWhiteSpace(dto.Comments) ? null : dto.Comments.Trim()
        };
    }

    private static DateOnly ParseDateOnly(string s)
    {
        if (DateOnly.TryParse(s, System.Globalization.CultureInfo.InvariantCulture,
                System.Globalization.DateTimeStyles.None, out var d))
            return d;
        return DateOnly.FromDateTime(DateTime.Parse(s, System.Globalization.CultureInfo.InvariantCulture,
            System.Globalization.DateTimeStyles.RoundtripKind));
    }

    private static DateOnly ParseDateOnlySafe(string? s)
    {
        if (string.IsNullOrWhiteSpace(s))
            return DateOnly.FromDateTime(DateTime.UtcNow);
        try
        {
            return ParseDateOnly(s);
        }
        catch
        {
            return DateOnly.FromDateTime(DateTime.UtcNow);
        }
    }

    private static string NormalizeStatus(string? s)
    {
        if (string.IsNullOrWhiteSpace(s))
            return RentalStatuses.Pending;
        return s.Trim();
    }

    private static async Task<string?> ReadErrorAsync(HttpResponseMessage response, CancellationToken cancellationToken)
    {
        try
        {
            var err = await response.Content.ReadFromJsonAsync<ApiErrorBody>(JsonOptions, cancellationToken);
            return err?.Message ?? err?.Error;
        }
        catch
        {
            return null;
        }
    }

    private sealed record ApiErrorBody(string? Error, string? Message);

    private sealed record RentalCreateApiDto(
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

    private sealed record RentalsListApiDto(List<RentalListItemApiDto>? Rentals, int TotalRentals);

    /// <summary>Loose shape so API additions/optionals do not break deserialization.</summary>
    private sealed record RentalListItemApiDto(
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

    private sealed record RentalDetailApiDto(
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
}
