using System.Net.Http.Headers;
using System.Net.Http.Json;
using StarterApp.Database.Models;

namespace StarterApp.Services;

/// <summary>
/// Authenticates against the shared REST API: obtains JWT via <c>auth/token</c>, stores it via <see cref="AuthTokenStoreService"/>, and loads profile from <c>users/me</c>.
/// </summary>
public class ApiAuthenticationService : IAuthenticationService
{
    private readonly HttpClient _httpClient;
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
    public ApiAuthenticationService(HttpClient httpClient, AuthTokenStoreService tokenStore)
    {
        _httpClient = httpClient;
        _tokenStore = tokenStore;
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

        var meResponse = await _httpClient.GetAsync("users/me");

        if (!meResponse.IsSuccessStatusCode)
        {
            await LogoutAsync();
            return;
        }

        var profile = await meResponse.Content.ReadFromJsonAsync<UserProfileResponse>();

        _currentUser = new User
        {
            Id = profile!.Id,
            Email = profile.Email,
            FirstName = profile.FirstName,
            LastName = profile.LastName,
            CreatedAt = profile.CreatedAt,
            IsActive = true
        };

        AuthenticationStateChanged?.Invoke(this, true);
    }

    /// <inheritdoc />
    public async Task<AuthenticationResult> LoginAsync(string email, string password)
    {
        try
        {
            var response = await _httpClient.PostAsJsonAsync("auth/token", new { email, password });

            if (!response.IsSuccessStatusCode)
            {
                var error = await response.Content.ReadFromJsonAsync<ApiErrorResponse>();
                return new AuthenticationResult(false, error?.Message ?? "Login failed");
            }

            var token = await response.Content.ReadFromJsonAsync<TokenResponse>();
            
            await _tokenStore.SaveTokenAsync(token!.Token, token.ExpiresAt);

            _httpClient.DefaultRequestHeaders.Authorization =
                new AuthenticationHeaderValue("Bearer", token.Token);

            var meResponse = await _httpClient.GetAsync("users/me");
            var profile = await meResponse.Content.ReadFromJsonAsync<UserProfileResponse>();

            _currentUser = new User
            {
                Id = profile!.Id,
                Email = profile.Email,
                FirstName = profile.FirstName,
                LastName = profile.LastName,
                CreatedAt = profile.CreatedAt,
                IsActive = true
            };

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
            var response = await _httpClient.PostAsJsonAsync("auth/register", new
            {
                firstName,
                lastName,
                email,
                password
            });

            if (!response.IsSuccessStatusCode)
            {
                var error = await response.Content.ReadFromJsonAsync<ApiErrorResponse>();
                return new AuthenticationResult(false, error?.Message ?? "Registration failed");
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
        // Not supported by the shared API
        return Task.FromResult(false);
    }

    // --- API response DTOs ---

    private record TokenResponse(string Token, DateTime ExpiresAt, int UserId);

    private record UserProfileResponse(
        int Id, string Email, string FirstName, string LastName, DateTime CreatedAt);

    private record ApiErrorResponse(string Error, string Message);
}