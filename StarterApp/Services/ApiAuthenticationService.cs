using System.Net.Http.Headers;
using StarterApp.Database.Api;
using StarterApp.Database.Models;

namespace StarterApp.Services;

/// <summary>
/// Authenticates against the shared REST API: obtains JWT via <c>auth/token</c>, stores it via <see cref="AuthTokenStoreService"/>, and loads profile from <c>users/me</c>.
/// </summary>
public class ApiAuthenticationService : IAuthenticationService
{
    private readonly HttpClient _httpClient;
    private readonly IApiService _api;
    private readonly AuthTokenStoreService _tokenStore;
    private User? _currentUser;
    private readonly List<string> _currentUserRoles = new();

    /// <inheritdoc />
    public event EventHandler<bool>? AuthenticationStateChanged;

    /// <inheritdoc />
    public bool IsAuthenticated => _currentUser != null;

    /// <inheritdoc />
    public User? CurrentUser => _currentUser;

    /// <inheritdoc />
    public List<string> CurrentUserRoles => _currentUserRoles;

    /// <summary>Uses one shared <see cref="HttpClient"/> (Bearer header set after login) and persistent token storage.</summary>
    public ApiAuthenticationService(HttpClient httpClient, AuthTokenStoreService tokenStore, IApiService api)
    {
        _httpClient = httpClient;
        _tokenStore = tokenStore;
        _api = api;
    }

    /// <summary>
    /// Restores session from stored token if still valid: sets Authorization header and loads current user from the API.
    /// </summary>
    public async Task InitializeAsync()
    {
        var token = await _tokenStore.GetTokenAsync();
        var expiry = await _tokenStore.GetExpiryAsync();

        if (string.IsNullOrEmpty(token) || expiry is null || expiry <= DateTime.UtcNow)
            return;

        _httpClient.DefaultRequestHeaders.Authorization =
            new AuthenticationHeaderValue("Bearer", token);

        var (status, profile, _) = await _api.GetUsersMeAsync();

        if ((int)status < 200 || (int)status > 299 || profile is null)
        {
            await LogoutAsync();
            return;
        }

        _currentUser = MapSessionUser(profile);

        AuthenticationStateChanged?.Invoke(this, true);
    }

    /// <inheritdoc />
    public async Task<AuthenticationResult> LoginAsync(string email, string password)
    {
        try
        {
            var (status, tokenResponse, err) = await _api.PostAuthTokenAsync(email, password);

            if ((int)status < 200 || (int)status > 299 || tokenResponse is null)
            {
                var msg = err?.Message ?? err?.Error ?? "Login failed";
                return new AuthenticationResult(false, msg);
            }

            await _tokenStore.SaveTokenAsync(tokenResponse.Token, tokenResponse.ExpiresAt);

            _httpClient.DefaultRequestHeaders.Authorization =
                new AuthenticationHeaderValue("Bearer", tokenResponse.Token);

            var (meStatus, profile, _) = await _api.GetUsersMeAsync();

            if ((int)meStatus < 200 || (int)meStatus > 299 || profile is null)
                return new AuthenticationResult(false, "Login failed");

            _currentUser = MapSessionUser(profile);

            AuthenticationStateChanged?.Invoke(this, true);
            return new AuthenticationResult(true, "Login successful");
        }
        catch (Exception ex)
        {
            return new AuthenticationResult(false, $"Login failed: {ex.Message}");
        }
    }

    /// <inheritdoc />
    public async Task<AuthenticationResult> RegisterAsync(string firstName, string lastName, string email, string password)
    {
        try
        {
            var request = new RegisterApiRequest(firstName, lastName, email, password);
            var (status, err) = await _api.PostAuthRegisterAsync(request);

            if ((int)status < 200 || (int)status > 299)
            {
                var msg = err?.Message ?? err?.Error ?? "Registration failed";
                return new AuthenticationResult(false, msg);
            }

            return new AuthenticationResult(true, "Registration successful. Please log in.");
        }
        catch (Exception ex)
        {
            return new AuthenticationResult(false, $"Registration failed: {ex.Message}");
        }
    }

    /// <inheritdoc />
    public Task LogoutAsync()
    {
        _currentUser = null;
        _currentUserRoles.Clear();
        _httpClient.DefaultRequestHeaders.Authorization = null;
        _tokenStore.Clear();
        AuthenticationStateChanged?.Invoke(this, false);
        return Task.CompletedTask;
    }

    /// <inheritdoc />
    public bool HasRole(string roleName) =>
        _currentUserRoles.Contains(roleName, StringComparer.OrdinalIgnoreCase);

    /// <inheritdoc />
    public bool HasAnyRole(params string[] roleNames) =>
        roleNames.Any(HasRole);

    /// <inheritdoc />
    public bool HasAllRoles(params string[] roleNames) =>
        roleNames.All(HasRole);

    /// <inheritdoc />
    /// <remarks>The hosted API does not expose password change; always returns <c>false</c>.</remarks>
    public Task<bool> ChangePasswordAsync(string currentPassword, string newPassword)
    {
        return Task.FromResult(false);
    }

    private static User MapSessionUser(UserMeApiDto profile)
    {
        return new User
        {
            Id = profile.Id,
            Email = profile.Email,
            FirstName = profile.FirstName,
            LastName = profile.LastName,
            CreatedAt = profile.CreatedAt,
            IsActive = true
        };
    }
}
