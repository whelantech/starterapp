using StarterApp.Database.Models;
using StarterApp.Services;

namespace StarterApp.Test.Fakes;

/// <summary>Configurable <see cref="IAuthenticationService"/> for ViewModel unit tests.</summary>
public sealed class FakeAuthenticationService : IAuthenticationService
{
    public event EventHandler<bool>? AuthenticationStateChanged;

    private User? _currentUser;

    /// <summary>When set, the next read of <see cref="CurrentUser"/> throws and clears this property.</summary>
    public Exception? CurrentUserAccessFault { get; set; }

    public User? CurrentUser
    {
        get
        {
            if (CurrentUserAccessFault is not null)
            {
                var e = CurrentUserAccessFault;
                CurrentUserAccessFault = null;
                throw e;
            }

            return _currentUser;
        }
        set => _currentUser = value;
    }

    public bool IsAuthenticated => CurrentUser is not null;

    public List<string> CurrentUserRoles { get; } = new();

    public AuthenticationResult NextLogin { get; set; } = new(true, "ok");

    public Exception? LoginAsyncFault { get; set; }

    public AuthenticationResult NextRegister { get; set; } = new(true, "ok");

    public Exception? RegisterAsyncFault { get; set; }

    public Task<AuthenticationResult> LoginAsync(string email, string password)
    {
        if (LoginAsyncFault is not null)
            throw LoginAsyncFault;
        return Task.FromResult(NextLogin);
    }

    public Task<AuthenticationResult> RegisterAsync(string firstName, string lastName, string email, string password)
    {
        if (RegisterAsyncFault is not null)
            throw RegisterAsyncFault;
        return Task.FromResult(NextRegister);
    }

    public Task LogoutAsync()
    {
        _currentUser = null;
        AuthenticationStateChanged?.Invoke(this, false);
        return Task.CompletedTask;
    }

    public bool HasRole(string roleName) => CurrentUserRoles.Contains(roleName);

    public bool HasAnyRole(params string[] roleNames) => roleNames.Any(HasRole);

    public bool HasAllRoles(params string[] roleNames) => roleNames.All(HasRole);

    /// <summary>Invokes <see cref="AuthenticationStateChanged"/> for tests (events cannot be raised from outside the declaring type).</summary>
    public void RaiseAuthenticationStateChanged(bool isAuthenticated) =>
        AuthenticationStateChanged?.Invoke(this, isAuthenticated);

    /// <summary>Returned by <see cref="ChangePasswordAsync"/> unless <see cref="ChangePasswordThrows"/> is set.</summary>
    public bool ChangePasswordReturns { get; set; } = true;

    /// <summary>When set, <see cref="ChangePasswordAsync"/> throws this instead of completing.</summary>
    public Exception? ChangePasswordThrows { get; set; }

    public Task<bool> ChangePasswordAsync(string currentPassword, string newPassword)
    {
        if (ChangePasswordThrows is not null)
            throw ChangePasswordThrows;
        return Task.FromResult(ChangePasswordReturns);
    }
}
