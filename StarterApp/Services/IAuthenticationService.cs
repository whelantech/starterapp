using StarterApp.Database.Models;

namespace StarterApp.Services;

public interface IAuthenticationService
{
    /// <summary>Fired when the user signs in or out.</summary>
    event EventHandler<bool>? AuthenticationStateChanged;

    /// <summary>Whether a user session is currently loaded.</summary>
    bool IsAuthenticated { get; }

    /// <summary>The authenticated user, or <c>null</c> if not signed in.</summary>
    User? CurrentUser { get; }

    /// <summary>Role names for the current user (may be empty for API-backed auth if roles are not populated).</summary>
    List<string> CurrentUserRoles { get; }

    /// <summary>Validates credentials and establishes the session.</summary>
    Task<AuthenticationResult> LoginAsync(string email, string password);

    /// <summary>Creates a new account (implementation may require a separate login afterward).</summary>
    Task<AuthenticationResult> RegisterAsync(string firstName, string lastName, string email, string password);

    /// <summary>Clears the current session and any stored tokens.</summary>
    Task LogoutAsync();

    /// <summary>Returns whether the current user has the given role.</summary>
    bool HasRole(string roleName);

    /// <summary>Returns whether the current user has any of the given roles.</summary>
    bool HasAnyRole(params string[] roleNames);

    /// <summary>Returns whether the current user has all of the given roles.</summary>
    bool HasAllRoles(params string[] roleNames);

    /// <summary>Updates the password for the signed-in user when supported by the backend.</summary>
    Task<bool> ChangePasswordAsync(string currentPassword, string newPassword);
}