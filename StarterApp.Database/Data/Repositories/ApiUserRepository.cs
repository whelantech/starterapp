using System.Net.Http.Json;
using System.Text.Json;
using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Fetches the current user from the REST API (<c>GET users/me</c>).
/// </summary>
public class ApiUserRepository
{
    private readonly HttpClient _httpClient;

    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNameCaseInsensitive = true,
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase
    };

    public ApiUserRepository(HttpClient httpClient)
    {
        _httpClient = httpClient;
    }

    public async Task<User?> GetCurrentUserAsync()
    {
        using var response = await _httpClient.GetAsync("users/me");

        if (response.StatusCode == System.Net.HttpStatusCode.Unauthorized)
            throw new UnauthorizedAccessException("User is not authenticated");

        if (!response.IsSuccessStatusCode)
        {
            var error = await response.Content.ReadAsStringAsync();
            throw new InvalidOperationException($"API error: {error}");
        }

        var dto = await response.Content.ReadFromJsonAsync<UserApiDto>(JsonOptions);

        if (dto == null)
            throw new InvalidOperationException("Failed to parse user response");

        return MapToUser(dto);
    }

    private sealed record UserApiDto(
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
        bool IsActive
    );

    private static User MapToUser(UserApiDto dto)
    {
        return new User
        {
            Id = dto.Id,
            Email = dto.Email,
            FirstName = dto.FirstName,
            LastName = dto.LastName,
            AverageRating = dto.AverageRating,
            ItemsListed = dto.ItemsListed,
            RentalsCompleted = dto.RentalsCompleted,
            CreatedAt = dto.CreatedAt,
            PasswordHash = string.Empty,
            PasswordSalt = string.Empty,
            UpdatedAt = dto.UpdatedAt,
            DeletedAt = dto.DeletedAt,
            IsActive = dto.IsActive
        };
    }
}
