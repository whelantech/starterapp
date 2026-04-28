namespace StarterApp.Services;

/// <summary>
/// Shell <c>GoToAsync</c> abstraction for unit tests (avoids <see cref="Shell.Current" /> in ViewModels).
/// </summary>
public interface IShellNavigation
{
    Task GoToAsync(string route);
}
