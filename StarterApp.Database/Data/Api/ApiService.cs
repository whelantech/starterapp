using System.Net;
using System.Net.Http.Json;
using System.Text.Json;

namespace StarterApp.Database.Api;

public sealed class ApiService : IApiService
{
    private readonly HttpClient _httpClient;

    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNameCaseInsensitive = true,
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase
    };

    private const string ItemsEndpoint = "items";
    private const string CategoriesEndpoint = "categories";
    private const string RentalsEndpoint = "rentals";

    public ApiService(HttpClient httpClient)
    {
        _httpClient = httpClient;
    }

    public async Task<(HttpStatusCode Status, TokenApiResponse? Token, ApiErrorDto? Error)> PostAuthTokenAsync(
        string email,
        string password,
        CancellationToken cancellationToken = default)
    {
        using var response =
            await _httpClient.PostAsJsonAsync("auth/token", new { email, password }, JsonOptions, cancellationToken)
                .ConfigureAwait(false);

        if (!response.IsSuccessStatusCode)
        {
            var err = await ReadErrorDtoAsync(response, cancellationToken).ConfigureAwait(false);
            return (response.StatusCode, null, err);
        }

        var token = await response.Content.ReadFromJsonAsync<TokenApiResponse>(JsonOptions, cancellationToken)
            .ConfigureAwait(false);
        return (response.StatusCode, token, null);
    }

    public async Task<(HttpStatusCode Status, ApiErrorDto? Error)> PostAuthRegisterAsync(
        RegisterApiRequest request,
        CancellationToken cancellationToken = default)
    {
        using var response = await _httpClient.PostAsJsonAsync(
                "auth/register",
                new
                {
                    firstName = request.FirstName,
                    lastName = request.LastName,
                    email = request.Email,
                    password = request.Password
                },
                JsonOptions,
                cancellationToken)
            .ConfigureAwait(false);

        if (!response.IsSuccessStatusCode)
        {
            var err = await ReadErrorDtoAsync(response, cancellationToken).ConfigureAwait(false);
            return (response.StatusCode, err);
        }

        return (response.StatusCode, null);
    }

    public async Task<(HttpStatusCode Status, UserMeApiDto? User, string? RawError)> GetUsersMeAsync(
        CancellationToken cancellationToken = default)
    {
        using var response = await _httpClient.GetAsync("users/me", cancellationToken).ConfigureAwait(false);

        if (!response.IsSuccessStatusCode)
        {
            var raw = await response.Content.ReadAsStringAsync(cancellationToken).ConfigureAwait(false);
            return (response.StatusCode, null, raw);
        }

        var dto = await response.Content.ReadFromJsonAsync<UserMeApiDto>(JsonOptions, cancellationToken)
            .ConfigureAwait(false);
        return (response.StatusCode, dto, null);
    }

    public async Task<ItemsListApiResponse?> GetItemsPagedAsync(string queryString, CancellationToken cancellationToken = default)
    {
        var url = string.IsNullOrEmpty(queryString) ? ItemsEndpoint : $"{ItemsEndpoint}?{queryString}";
        return await _httpClient.GetFromJsonAsync<ItemsListApiResponse>(url, JsonOptions, cancellationToken)
            .ConfigureAwait(false);
    }

    public async Task<(HttpStatusCode Status, ItemDetailApiDto? Item)> GetItemByIdAsync(
        int id,
        CancellationToken cancellationToken = default)
    {
        using var response = await _httpClient.GetAsync($"{ItemsEndpoint}/{id}", cancellationToken).ConfigureAwait(false);

        if (response.StatusCode == HttpStatusCode.NotFound)
            return (response.StatusCode, null);

        if (!response.IsSuccessStatusCode)
        {
            var msg = await ReadErrorMessageAsync(response, cancellationToken).ConfigureAwait(false);
            throw new InvalidOperationException(msg ?? response.ReasonPhrase ?? "Request failed");
        }

        var dto = await response.Content.ReadFromJsonAsync<ItemDetailApiDto>(JsonOptions, cancellationToken)
            .ConfigureAwait(false);
        return (response.StatusCode, dto);
    }

    public async Task<(HttpStatusCode Status, CreateItemApiResponse? Created, string? Error)> PostItemAsync(
        object body,
        CancellationToken cancellationToken = default)
    {
        using var response =
            await _httpClient.PostAsJsonAsync(ItemsEndpoint, body, JsonOptions, cancellationToken).ConfigureAwait(false);

        if (!response.IsSuccessStatusCode)
        {
            var msg = await ReadErrorMessageAsync(response, cancellationToken).ConfigureAwait(false);
            return (response.StatusCode, null, msg);
        }

        var created = await response.Content.ReadFromJsonAsync<CreateItemApiResponse>(JsonOptions, cancellationToken)
            .ConfigureAwait(false);
        return (response.StatusCode, created, null);
    }

    public async Task<(HttpStatusCode Status, ItemDetailApiDto? Item, string? Error)> PutItemAsync(
        int id,
        object body,
        CancellationToken cancellationToken = default)
    {
        using var response =
            await _httpClient.PutAsJsonAsync($"{ItemsEndpoint}/{id}", body, JsonOptions, cancellationToken)
                .ConfigureAwait(false);

        if (response.StatusCode == HttpStatusCode.NotFound)
            return (response.StatusCode, null, null);

        if (!response.IsSuccessStatusCode)
        {
            var msg = await ReadErrorMessageAsync(response, cancellationToken).ConfigureAwait(false);
            return (response.StatusCode, null, msg);
        }

        var dto = await response.Content.ReadFromJsonAsync<ItemDetailApiDto>(JsonOptions, cancellationToken)
            .ConfigureAwait(false);
        return (response.StatusCode, dto, null);
    }

    public Task<CategoriesApiResponse?> GetCategoriesAsync(CancellationToken cancellationToken = default) =>
        _httpClient.GetFromJsonAsync<CategoriesApiResponse>(CategoriesEndpoint, JsonOptions, cancellationToken);

    public async Task<(HttpStatusCode Status, RentalCreateApiDto? Rental, string? Error)> PostRentalAsync(
        object body,
        CancellationToken cancellationToken = default)
    {
        using var response =
            await _httpClient.PostAsJsonAsync(RentalsEndpoint, body, JsonOptions, cancellationToken).ConfigureAwait(false);

        if (!response.IsSuccessStatusCode)
        {
            var msg = await ReadErrorMessageAsync(response, cancellationToken).ConfigureAwait(false);
            return (response.StatusCode, null, msg);
        }

        var dto = await response.Content.ReadFromJsonAsync<RentalCreateApiDto>(JsonOptions, cancellationToken)
            .ConfigureAwait(false);
        return (response.StatusCode, dto, null);
    }

    public async Task<(HttpStatusCode Status, RentalsListApiDto? Wrapper, string? Error)> GetRentalsListAsync(
        string incomingOrOutgoingSegment,
        string? statusFilter,
        CancellationToken cancellationToken = default)
    {
        var path = $"{RentalsEndpoint}/{incomingOrOutgoingSegment}";
        if (!string.IsNullOrWhiteSpace(statusFilter))
            path = $"{path}?status={Uri.EscapeDataString(statusFilter.Trim())}";

        using var response = await _httpClient.GetAsync(path, cancellationToken).ConfigureAwait(false);

        if (response.StatusCode == HttpStatusCode.Unauthorized)
            return (response.StatusCode, null, null);

        if (!response.IsSuccessStatusCode)
        {
            var msg = await ReadErrorMessageAsync(response, cancellationToken).ConfigureAwait(false);
            return (response.StatusCode, null, msg ?? $"Could not load rentals ({(int)response.StatusCode}).");
        }

        var json = await response.Content.ReadAsStringAsync(cancellationToken).ConfigureAwait(false);
        if (string.IsNullOrWhiteSpace(json))
            return (response.StatusCode, new RentalsListApiDto(new List<RentalListItemApiDto>(), 0), null);

        try
        {
            var wrapper = JsonSerializer.Deserialize<RentalsListApiDto>(json, JsonOptions);
            return (response.StatusCode, wrapper, null);
        }
        catch (JsonException ex)
        {
            throw new InvalidOperationException("Could not parse rentals from the server.", ex);
        }
    }

    public async Task<(HttpStatusCode Status, RentalDetailApiDto? Rental)> GetRentalByIdAsync(
        int rentalId,
        CancellationToken cancellationToken = default)
    {
        using var response =
            await _httpClient.GetAsync($"{RentalsEndpoint}/{rentalId}", cancellationToken).ConfigureAwait(false);

        if (response.StatusCode is HttpStatusCode.NotFound or HttpStatusCode.Forbidden or HttpStatusCode.Unauthorized)
            return (response.StatusCode, null);

        if (!response.IsSuccessStatusCode)
        {
            var msg = await ReadErrorMessageAsync(response, cancellationToken).ConfigureAwait(false);
            throw new InvalidOperationException(msg ?? "Could not load rental.");
        }

        var dto = await response.Content.ReadFromJsonAsync<RentalDetailApiDto>(JsonOptions, cancellationToken)
            .ConfigureAwait(false);
        return (response.StatusCode, dto);
    }

    public async Task<(HttpStatusCode Status, string? Error)> PatchRentalStatusAsync(
        int rentalId,
        object body,
        CancellationToken cancellationToken = default)
    {
        using var response =
            await _httpClient.PatchAsJsonAsync($"{RentalsEndpoint}/{rentalId}/status", body, JsonOptions, cancellationToken)
                .ConfigureAwait(false);

        if (!response.IsSuccessStatusCode)
        {
            var msg = await ReadErrorMessageAsync(response, cancellationToken).ConfigureAwait(false);
            return (response.StatusCode, msg ?? "Could not update rental status.");
        }

        return (response.StatusCode, null);
    }

    internal static async Task<string?> ReadErrorMessageAsync(
        HttpResponseMessage response,
        CancellationToken cancellationToken)
    {
        try
        {
            var err = await response.Content.ReadFromJsonAsync<ApiErrorDto>(JsonOptions, cancellationToken)
                .ConfigureAwait(false);
            return err?.Message ?? err?.Error ?? response.ReasonPhrase;
        }
        catch
        {
            return response.ReasonPhrase;
        }
    }

    private static async Task<ApiErrorDto?> ReadErrorDtoAsync(HttpResponseMessage response, CancellationToken cancellationToken)
    {
        try
        {
            return await response.Content.ReadFromJsonAsync<ApiErrorDto>(JsonOptions, cancellationToken)
                .ConfigureAwait(false);
        }
        catch
        {
            return null;
        }
    }
}
