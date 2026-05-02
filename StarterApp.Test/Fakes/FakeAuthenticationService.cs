using StarterApp.Database.Models;
using StarterApp.Services;

namespace StarterApp.Test.Fakes;

/// <summary>Configurable <see cref="IAuthenticationService"/> for ViewModel unit tests.</summary>
public sealed class FakeAuthenticationService : IAuthenticationService
{
    public event EventHandler<bool>? AuthenticationStateChanged;

    public User? CurrentUser { get; set; }

    public bool IsAuthenticated => CurrentUser is not null;

    public List<string> CurrentUserRoles { get; } = new();

    public AuthenticationResult NextLogin { get; set; } = new(true, "ok");

    public AuthenticationResult NextRegister { get; set; } = new(true, "ok");

    public Task<AuthenticationResult> LoginAsync(string email, string password) =>
        Task.FromResult(NextLogin);

    public Task<AuthenticationResult> RegisterAsync(string firstName, string lastName, string email, string password) =>
        Task.FromResult(NextRegister);

    public Task LogoutAsync()
    {
        CurrentUser = null;
        AuthenticationStateChanged?.Invoke(this, false);
        return Task.CompletedTask;
    }

    public bool HasRole(string roleName) => CurrentUserRoles.Contains(roleName);

    public bool HasAnyRole(params string[] roleNames) => roleNames.Any(HasRole);

    public bool HasAllRoles(params string[] roleNames) => roleNames.All(HasRole);

    public Task<bool> ChangePasswordAsync(string currentPassword, string newPassword) =>
        Task.FromResult(true);
}
