using System.Net;
using System.Text.Json;
using StarterApp.Database.Api;

namespace StarterApp.Test.Fakes;

/// <summary>
/// In-memory stand-in for <see cref="IApiService"/> used only by tests. Responses mirror production tuple shapes so
/// repositories can be exercised without HTTP. Stored passwords are plain text deliberately—never use this approach
/// outside a test harness.
/// </summary>
public sealed class ApiTestService : IApiService
{
    // Align wire JSON with StarterApp.Database.Api.ApiService (camelCase, case-insensitive).
    private static readonly JsonSerializerOptions WireJson = new()
    {
        PropertyNameCaseInsensitive = true,
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase
    };

    // ----- Authentication (Register / Login / Profile) -----
    /// <summary>Registered accounts keyed by lowercase email.</summary>
    private readonly Dictionary<string, RegisteredAccount> _accounts = new(StringComparer.OrdinalIgnoreCase);

    /// <summary>Set after successful login; drives <see cref="GetUsersMeAsync"/>.</summary>
    private UserMeApiDto? _currentUserProfile;

    private int _nextUserId = 1;

    /// <summary>Items keyed by Id (detail projections)</summary>
    private readonly Dictionary<int, ItemDetailApiDto> _itemsById = new();

    private readonly List<RentalLedgerEntry> _rentals = new();
    private int _nextRentalId = 1;

    private readonly CategoriesApiResponse _catalog;

    public ApiTestService()
    {
        // Seed categories matching repository slug lookups used in paging queries.
        _catalog = new CategoriesApiResponse(
            new List<CategoryApiDto>
            {
                new(1, "Electronics", "electronics", 2),
                new(2, "Tools", "tools", 0)
            });

        SeedItems();
    }

    private void SeedItems()
    {
        var now = DateTime.UtcNow;
        var seeded = new[]
        {
            new ItemDetailApiDto(
                100,
                "Power Drill Seeded",
                "Good for tests.",
                12.40m,
                1,
                "Electronics",
                501,
                "Seed Owner",
                4.2,
                55.9533,
                -3.1883,
                true,
                4.0,
                1,
                now),
            new ItemDetailApiDto(
                101,
                "Hammer Drill Seeded",
                "Outdoor jobs.",
                9.99m,
                1,
                "Electronics",
                502,
                "Seed Owner Two",
                4.9,
                55.9540,
                -3.1890,
                true,
                5.0,
                2,
                now)
        };

        foreach (var d in seeded)
            _itemsById[d.Id] = d;
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, TokenApiResponse? Token, ApiErrorDto? Error)> PostAuthTokenAsync(
        string email,
        string password,
        CancellationToken cancellationToken = default)
    {
        // Success: credential match → issue token surrogate and latch profile for /users/me.
        if (!_accounts.TryGetValue(email.Trim(), out var acc) || acc.Password != password)
        {
            return Task.FromResult(
                (
                    HttpStatusCode.Unauthorized,
                    (TokenApiResponse?)null,
                    (ApiErrorDto?)new ApiErrorDto("Unauthorized", "Invalid credentials")));
        }

        var token =
            $"{acc.Profile.Email}:{Guid.NewGuid():N}"; // Token string contents are irrelevant except uniqueness in fake.
        _currentUserProfile = acc.Profile;
        return Task.FromResult(
            (
                HttpStatusCode.OK,
                (TokenApiResponse?)new TokenApiResponse(Token: token, ExpiresAt: DateTime.UtcNow.AddHours(8), UserId: acc.Profile.Id),
                (ApiErrorDto?)null));
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, ApiErrorDto? Error)> PostAuthRegisterAsync(
        RegisterApiRequest request,
        CancellationToken cancellationToken = default)
    {
        // Duplicate email behaves like validation failure rather than crashing in tests.
        if (_accounts.ContainsKey(request.Email.Trim()))
            return Task.FromResult((HttpStatusCode.BadRequest, (ApiErrorDto?)new ApiErrorDto("BadRequest", "Email already registered")));

        var profile = BuildNewUser(request);
        _accounts[profile.Email.Trim()] = new RegisteredAccount(request.Password, profile);
        return Task.FromResult((HttpStatusCode.Created, (ApiErrorDto?)null));
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, UserMeApiDto? User, string? RawError)> GetUsersMeAsync(
        CancellationToken cancellationToken = default)
    {
        // Without a prior login, behave like anonymous access to profile.
        if (_currentUserProfile is null)
            return Task.FromResult(((HttpStatusCode.Unauthorized, (UserMeApiDto?)null, (string?)"Not authenticated")));

        return Task.FromResult(((HttpStatusCode.OK, (UserMeApiDto?)_currentUserProfile, (string?)null)));
    }

    /// <summary>
    /// Registers when the email is new, then signs in — keeps rental/item tests from duplicating register+token steps.
    /// </summary>
    public async Task EnsureSignedInAsync(RegisterApiRequest request, CancellationToken cancellationToken = default)
    {
        if (!_accounts.ContainsKey(request.Email.Trim()))
        {
            await PostAuthRegisterAsync(request, cancellationToken).ConfigureAwait(false);
        }

        await PostAuthTokenAsync(request.Email.Trim(), request.Password, cancellationToken).ConfigureAwait(false);
    }

    // ----- Categories -----

    /// <inheritdoc />
    public Task<CategoriesApiResponse?> GetCategoriesAsync(CancellationToken cancellationToken = default)
    {
        return Task.FromResult<CategoriesApiResponse?>(_catalog);
    }

    // ----- Items -----
    /// <inheritdoc />
    public Task<ItemsListApiResponse?> GetItemsPagedAsync(string queryString, CancellationToken cancellationToken = default)
    {
        var q = ParseQueryString(queryString);
        _ = q.TryGetValue("page", out var pageStr);
        _ = q.TryGetValue("pageSize", out var pageSizeStr);
        _ = q.TryGetValue("category", out var categorySlug);
        _ = q.TryGetValue("search", out var search);

        var page = int.TryParse(pageStr, out var p) ? Math.Max(1, p) : 1;
        var pageSize = int.TryParse(pageSizeStr, out var ps) ? Math.Clamp(ps, 1, 100) : 20;

        IEnumerable<ItemDetailApiDto> enumerable = _itemsById.Values;
        if (!string.IsNullOrWhiteSpace(categorySlug))
            enumerable =
                enumerable.Where(i => CategorySlugForCategoryId(i.CategoryId)
                    ?.Equals(categorySlug.Trim(), StringComparison.OrdinalIgnoreCase) == true);

        if (!string.IsNullOrWhiteSpace(search))
        {
            var needle = search.Trim();
            enumerable = enumerable.Where(i =>
                i.Title.Contains(needle, StringComparison.OrdinalIgnoreCase)
                || (i.Description ?? string.Empty).Contains(needle, StringComparison.OrdinalIgnoreCase));
        }

        var ordered = enumerable.OrderBy(i => i.Id).ToList();
        var total = ordered.Count;
        var totalPages = Math.Max(1, (int)Math.Ceiling(total / (double)pageSize));
        var slice = ordered.Skip((page - 1) * pageSize).Take(pageSize).Select(ToListDto).ToList();

        var wrapper = new ItemsListApiResponse(slice, total, page, pageSize, totalPages);

        return Task.FromResult<ItemsListApiResponse?>(wrapper);
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, ItemDetailApiDto? Item)> GetItemByIdAsync(
        int id,
        CancellationToken cancellationToken = default)
    {
        // Mirror ApiService: missing id → NotFound payload null.
        if (!_itemsById.TryGetValue(id, out var item))
            return Task.FromResult((HttpStatusCode.NotFound, (ItemDetailApiDto?)null));

        return Task.FromResult((HttpStatusCode.OK, (ItemDetailApiDto?)item));
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, CreateItemApiResponse? Created, string? Error)> PostItemAsync(
        object body,
        CancellationToken cancellationToken = default)
    {
        if (!TryDeserializeWire<PostItemWire>(body, out var wire) || wire is null)
            return Task.FromResult(
                (
                    HttpStatusCode.BadRequest,
                    (CreateItemApiResponse?)null,
                    (string?)"Invalid create item body"));

        // Owner attributes follow “logged in” user when available; otherwise a neutral test owner.
        var ownerId = _currentUserProfile?.Id ?? 999;
        var ownerName = _currentUserProfile is null
            ? "Fake Owner"
            : $"{_currentUserProfile.FirstName} {_currentUserProfile.LastName}".Trim();

        var categoryName = _catalog.Categories.FirstOrDefault(c => c.Id == wire.CategoryId)?.Name;

        var newId = _itemsById.Keys.Count == 0 ? 1 : _itemsById.Keys.Max() + 1;
        var now = DateTime.UtcNow;
        var detail = new ItemDetailApiDto(
            newId,
            wire.Title,
            wire.Description,
            wire.DailyRate,
            wire.CategoryId,
            categoryName,
            ownerId,
            ownerName,
            4.5,
            wire.Latitude,
            wire.Longitude,
            true,
            null,
            null,
            now);

        _itemsById[newId] = detail;

        var created = new CreateItemApiResponse(
            detail.Id,
            detail.Title,
            detail.Description,
            detail.DailyRate,
            detail.CategoryId,
            categoryName,
            detail.OwnerId,
            detail.OwnerName,
            detail.Latitude,
            detail.Longitude,
            detail.IsAvailable,
            detail.CreatedAt);

        return Task.FromResult(((HttpStatusCode)201, (CreateItemApiResponse?)created, (string?)null));
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, ItemDetailApiDto? Item, string? Error)> PutItemAsync(
        int id,
        object body,
        CancellationToken cancellationToken = default)
    {
        if (!_itemsById.TryGetValue(id, out var existing))
            return Task.FromResult((HttpStatusCode.NotFound, (ItemDetailApiDto?)null, (string?)null));

        if (!TryDeserializeWire<PutItemWire>(body, out var wire) || wire is null)
            return Task.FromResult((HttpStatusCode.BadRequest, (ItemDetailApiDto?)null, (string?)"Invalid update body"));

        var catName =
            wire.CategoryId is { } cid ? _catalog.Categories.FirstOrDefault(c => c.Id == cid)?.Name : existing.CategoryName;

        var updated = existing with
        {
            Title = wire.Title ?? existing.Title,
            Description = wire.Description ?? existing.Description,
            DailyRate = wire.DailyRate ?? existing.DailyRate,
            CategoryId = wire.CategoryId ?? existing.CategoryId,
            CategoryName = catName,
            Latitude = wire.Latitude ?? existing.Latitude,
            Longitude = wire.Longitude ?? existing.Longitude,
            IsAvailable = wire.IsAvailable ?? existing.IsAvailable
        };

        _itemsById[id] = updated;
        return Task.FromResult((HttpStatusCode.OK, (ItemDetailApiDto?)updated, (string?)null));
    }

    // ----- Rentals -----
    /// <inheritdoc />
    public Task<(HttpStatusCode Status, RentalCreateApiDto? Rental, string? Error)> PostRentalAsync(
        object body,
        CancellationToken cancellationToken = default)
    {
        if (!TryDeserializeWire<PostRentalWire>(body, out var wire) || wire is null)
            return Task.FromResult(((HttpStatusCode)400, (RentalCreateApiDto?)null, (string?)"Invalid rental body"));

        if (!_itemsById.TryGetValue(wire.ItemId, out var itemDetail))
            return Task.FromResult((HttpStatusCode.BadRequest, (RentalCreateApiDto?)null, (string?)"Unknown item"));

        var borrowerId = _currentUserProfile?.Id ?? 777;
        var borrowerName =
            _currentUserProfile is null ? "Borrower Fake" :
            $"{_currentUserProfile.FirstName} {_currentUserProfile.LastName}".Trim();

        var totalDays = RentalDaysInclusive(wire.StartDate, wire.EndDate);
        if (totalDays <= 0)
            return Task.FromResult((HttpStatusCode.BadRequest, (RentalCreateApiDto?)null, (string?)"Bad date span"));

        var totalPrice = itemDetail.DailyRate * totalDays;
        var now = DateTime.UtcNow;
        var ledger = new RentalLedgerEntry(
            _nextRentalId++,
            wire.ItemId,
            itemDetail.Title,
            borrowerId,
            borrowerName,
            itemDetail.OwnerId,
            itemDetail.OwnerName ?? "",
            wire.StartDate,
            wire.EndDate,
            "Pending",
            totalPrice,
            now);

        _rentals.Add(ledger);

        var dto = new RentalCreateApiDto(
            ledger.Id,
            ledger.ItemId,
            ledger.ItemTitle,
            borrowerId,
            borrowerName,
            ledger.OwnerId,
            ledger.OwnerName,
            ledger.StartDate,
            ledger.EndDate,
            ledger.Status,
            ledger.TotalPrice,
            now);

        return Task.FromResult((HttpStatusCode.Created, (RentalCreateApiDto?)dto, (string?)null));
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, RentalsListApiDto? Wrapper, string? Error)> GetRentalsListAsync(
        string incomingOrOutgoingSegment,
        string? statusFilter,
        CancellationToken cancellationToken = default)
    {
        if (_currentUserProfile is null)
            return Task.FromResult((HttpStatusCode.Unauthorized, (RentalsListApiDto?)null, (string?)null));

        IEnumerable<RentalLedgerEntry> query = incomingOrOutgoingSegment.Trim().Equals("incoming",
                StringComparison.OrdinalIgnoreCase)
            ? _rentals.Where(r => r.OwnerId == _currentUserProfile.Id)
            : _rentals.Where(r => r.BorrowerId == _currentUserProfile.Id);

        if (!string.IsNullOrWhiteSpace(statusFilter))
            query = query.Where(r =>
                string.Equals(r.Status, statusFilter.Trim(), StringComparison.OrdinalIgnoreCase));

        var list =
            query.ToList(); // Stable materialization order for deterministic tests

        var items = list
            .Select(r => new RentalListItemApiDto(
                r.Id,
                r.ItemId,
                r.ItemTitle,
                r.BorrowerId,
                r.BorrowerName,
                r.OwnerId,
                r.OwnerName,
                r.StartDate,
                r.EndDate,
                r.Status,
                r.TotalPrice,
                r.CreatedAt))
            .ToList();

        return Task.FromResult(
            (
                HttpStatusCode.OK,
                (RentalsListApiDto?)new RentalsListApiDto(items, items.Count),
                (string?)null));
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, RentalDetailApiDto? Rental)> GetRentalByIdAsync(
        int rentalId,
        CancellationToken cancellationToken = default)
    {
        var entry = _rentals.FirstOrDefault(r => r.Id == rentalId);
        if (entry is null)
            return Task.FromResult((HttpStatusCode.NotFound, (RentalDetailApiDto?)null));

        if (_currentUserProfile is null
            || (entry.BorrowerId != _currentUserProfile.Id && entry.OwnerId != _currentUserProfile.Id))
            return Task.FromResult((HttpStatusCode.Forbidden, (RentalDetailApiDto?)null));

        var dto = new RentalDetailApiDto(
            entry.Id,
            entry.ItemId,
            entry.ItemTitle,
            "",
            entry.BorrowerId,
            entry.BorrowerName,
            entry.OwnerId,
            entry.OwnerName,
            entry.StartDate,
            entry.EndDate,
            entry.Status,
            entry.TotalPrice,
            entry.CreatedAt,
            "");

        return Task.FromResult((HttpStatusCode.OK, (RentalDetailApiDto?)dto));
    }

    /// <inheritdoc />
    public Task<(HttpStatusCode Status, string? Error)> PatchRentalStatusAsync(
        int rentalId,
        object body,
        CancellationToken cancellationToken = default)
    {
        var entry = _rentals.FirstOrDefault(r => r.Id == rentalId);
        if (entry is null)
            return Task.FromResult((HttpStatusCode.NotFound, (string?)"Rental not found"));

        if (!TryDeserializeWire<PatchStatusWire>(body, out var wire) || wire is null ||
            string.IsNullOrWhiteSpace(wire.Status))
            return Task.FromResult((HttpStatusCode.BadRequest, (string?)"Missing status"));

        entry.Status = wire.Status.Trim();
        return Task.FromResult(((HttpStatusCode)204, (string?)null));
    }

    // ----- Helpers (DRY helpers for wire + query parsing) -----
    private static decimal RentalDaysInclusive(string start, string end)
    {
        if (!DateOnly.TryParse(start, out var sd) || !DateOnly.TryParse(end, out var ed))
            return 0;

        var span = ed.DayNumber - sd.DayNumber + 1;
        return span;
    }

    private string? CategorySlugForCategoryId(int categoryId)
    {
        var cat = _catalog.Categories.FirstOrDefault(c => c.Id == categoryId);
        return cat?.Slug;
    }

    private static ItemListApiDto ToListDto(ItemDetailApiDto d) =>
        new(d.Id,
            d.Title,
            d.Description,
            d.DailyRate,
            d.CategoryId,
            d.CategoryName,
            d.OwnerId,
            d.OwnerName,
            d.OwnerRating,
            d.IsAvailable,
            d.AverageRating,
            ImageUrl: null,
            d.CreatedAt);

    private UserMeApiDto BuildNewUser(RegisterApiRequest request)
    {
        var id = _nextUserId++;
        var now = DateTime.UtcNow;
        return new UserMeApiDto(
            id,
            request.Email.Trim(),
            request.FirstName,
            request.LastName,
            AverageRating: null,
            ItemsListed: 0,
            RentalsCompleted: 0,
            CreatedAt: now,
            UpdatedAt: now,
            DeletedAt: default,
            IsActive: true);
    }

    private static bool TryDeserializeWire<T>(object body, out T? value) where T : class
    {
        value = null;
        try
        {
            var json = JsonSerializer.Serialize(body, body.GetType(), WireJson);
            value = JsonSerializer.Deserialize<T>(json, WireJson);
            return value is not null;
        }
        catch
        {
            return false;
        }
    }

    private static Dictionary<string, string> ParseQueryString(string queryString)
    {
        var dict = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        if (string.IsNullOrWhiteSpace(queryString))
            return dict;

        foreach (var pair in queryString.Split('&', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries))
        {
            var parts = pair.Split('=', 2);
            var key = Uri.UnescapeDataString(parts[0]);
            var val = parts.Length > 1 ? Uri.UnescapeDataString(parts[1]) : "";
            dict[key] = val;
        }

        return dict;
    }

    private sealed record RegisteredAccount(string Password, UserMeApiDto Profile);

    private sealed class PostItemWire
    {
        public string Title { get; set; } = "";
        public string? Description { get; set; }
        public decimal DailyRate { get; set; }
        public int CategoryId { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
    }

    private sealed class PutItemWire
    {
        public string? Title { get; set; }
        public string? Description { get; set; }
        public decimal? DailyRate { get; set; }
        public int? CategoryId { get; set; }
        public double? Latitude { get; set; }
        public double? Longitude { get; set; }
        public bool? IsAvailable { get; set; }
    }

    private sealed class PostRentalWire
    {
        public int ItemId { get; set; }
        public string StartDate { get; set; } = "";
        public string EndDate { get; set; } = "";
    }

    private sealed class PatchStatusWire
    {
        public string? Status { get; set; }
    }

    private sealed class RentalLedgerEntry
    {
        public RentalLedgerEntry(
            int id,
            int itemId,
            string itemTitle,
            int borrowerId,
            string borrowerName,
            int? ownerId,
            string ownerName,
            string startDate,
            string endDate,
            string status,
            decimal totalPrice,
            DateTime createdAt)
        {
            Id = id;
            ItemId = itemId;
            ItemTitle = itemTitle;
            BorrowerId = borrowerId;
            BorrowerName = borrowerName;
            OwnerId = ownerId ?? 0;
            OwnerName = ownerName;
            StartDate = startDate;
            EndDate = endDate;
            Status = status;
            TotalPrice = totalPrice;
            CreatedAt = createdAt;
        }

        public int Id { get; }
        public int ItemId { get; }
        public string ItemTitle { get; }
        public int BorrowerId { get; }
        public string BorrowerName { get; }
        public int OwnerId { get; }
        public string OwnerName { get; }
        public string StartDate { get; }
        public string EndDate { get; }
        public string Status { get; set; }
        public decimal TotalPrice { get; }
        public DateTime CreatedAt { get; }
    }
}
