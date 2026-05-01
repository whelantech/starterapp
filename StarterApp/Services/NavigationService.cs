namespace StarterApp.Services;

/// <summary>
/// Thin wrapper around <see cref="Shell"/> navigation routes used by view models (keeps navigation strings in one place).
/// </summary>
public class NavigationService : INavigationService
{
    /// <inheritdoc />
    public async Task NavigateToAsync(string route)
    {
        await Shell.Current.GoToAsync(route);
    }

    /// <inheritdoc />
    public async Task NavigateToAsync(string route, Dictionary<string, object> parameters)
    {
        await Shell.Current.GoToAsync(route, parameters);
    }

    /// <inheritdoc />
    public async Task NavigateBackAsync()
    {
        await Shell.Current.GoToAsync("..");
    }

    /// <inheritdoc />
    public async Task NavigateToRootAsync()
    {
        await Shell.Current.GoToAsync("//login");
    }

    /// <inheritdoc />
    public async Task PopToRootAsync()
    {
        await Shell.Current.Navigation.PopToRootAsync();
    }
}