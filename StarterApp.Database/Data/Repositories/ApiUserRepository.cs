using System.Net;
using StarterApp.Database.Api;
using StarterApp.Database.Models;

namespace StarterApp.Database.Repositories;

/// <summary>
/// Fetches the current user from the REST API (<c>GET users/me</c>).
/// </summary>
public class ApiUserRepository
{
    private readonly IApiService _api;

    public ApiUserRepository(IApiService api)
    {
        _api = api;
    }

    /// <summary>Fetches the authenticated user from <c>GET users/me</c> using the client’s Bearer token.</summary>
    /// <remarks>Throws <see cref="UnauthorizedAccessException"/> or <see cref="InvalidOperationException"/> on failure; does not return null on error.</remarks>
    public async Task<User?> GetCurrentUserAsync()
    {
        var (status, dto, rawError) = await _api.GetUsersMeAsync();

        if (status == HttpStatusCode.Unauthorized)
            throw new UnauthorizedAccessException("User is not authenticated");

        if ((int)status < 200 || (int)status > 299 || dto is null)
        {
            var error = rawError ?? "Unknown error";
            throw new InvalidOperationException($"API error: {error}");
        }

        return MapToUser(dto);
    }

    private static User MapToUser(UserMeApiDto dto)
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
