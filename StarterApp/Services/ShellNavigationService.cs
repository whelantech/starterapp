namespace StarterApp.Services;

public sealed class ShellNavigationService : IShellNavigation
{
    public Task GoToAsync(string route) => Shell.Current.GoToAsync(route);
}
