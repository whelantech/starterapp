using System.Net;
using StarterApp.Database.Api;
using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Rental access via the shared SET09102 REST API (Bearer token on HttpClient).
/// </summary>
public class ApiRentalRepository : IRentalRepository
{
    private readonly IApiService _api;

    public ApiRentalRepository(IApiService api)
    {
        _api = api;
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

        var (status, created, error) = await _api.PostRentalAsync(body, cancellationToken);

        if (status == HttpStatusCode.BadRequest)
            throw new InvalidOperationException(error ?? "Could not create rental.");

        if (created is null)
            throw new InvalidOperationException(error ?? "Could not create rental.");

        return MapFromCreate(created);
    }

    /// <inheritdoc />
    public async Task<IReadOnlyList<Rental>> GetIncomingAsync(
        int ownerUserId,
        string? statusFilter = null,
        CancellationToken cancellationToken = default)
    {
        _ = ownerUserId;
        return await GetRentalListAsync("incoming", statusFilter, cancellationToken);
    }

    /// <inheritdoc />
    public async Task<IReadOnlyList<Rental>> GetOutgoingAsync(
        int borrowerUserId,
        string? statusFilter = null,
        CancellationToken cancellationToken = default)
    {
        _ = borrowerUserId;
        return await GetRentalListAsync("outgoing", statusFilter, cancellationToken);
    }

    private async Task<IReadOnlyList<Rental>> GetRentalListAsync(
        string segment,
        string? statusFilter,
        CancellationToken cancellationToken)
    {
        var (status, wrapper, error) = await _api.GetRentalsListAsync(segment, statusFilter, cancellationToken);

        if (status == HttpStatusCode.Unauthorized)
            throw new UnauthorizedAccessException("Sign in again to load rentals.");

        if (status != HttpStatusCode.OK)
            throw new InvalidOperationException(error ?? $"Could not load rentals ({(int)status}).");

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

    /// <inheritdoc />
    public async Task<Rental?> GetByIdAsync(int rentalId, int currentUserId, CancellationToken cancellationToken = default)
    {
        _ = currentUserId;
        var (_, dto) = await _api.GetRentalByIdAsync(rentalId, cancellationToken);
        return dto is null ? null : MapFromDetail(dto);
    }

    /// <inheritdoc />
    public async Task TransitionAsync(
        int rentalId,
        int actingUserId,
        RentalTransition transition,
        CancellationToken cancellationToken = default)
    {
        _ = actingUserId;
        var newStatus = RentalTransitionApiMapper.ToApiStatus(transition);
        var body = new { status = newStatus };
        var (httpStatus, error) = await _api.PatchRentalStatusAsync(rentalId, body, cancellationToken);

        if ((int)httpStatus < 200 || (int)httpStatus > 299)
            throw new InvalidOperationException(error ?? "Could not update rental status.");
    }

    /// <inheritdoc />
    public Task UpdateStatusAsync(
        int rentalId,
        int actingUserId,
        string newStatus,
        CancellationToken cancellationToken = default)
    {
        var transition = RentalTransitionParser.FromNewStatusString(newStatus);
        return TransitionAsync(rentalId, actingUserId, transition, cancellationToken);
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
}
