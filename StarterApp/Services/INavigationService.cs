namespace StarterApp.Services;

/// <summary>Shell-based navigation helpers for the MAUI app.</summary>
public interface INavigationService
{
    /// <summary>Navigates to a registered route (e.g. <c>MainPage</c>).</summary>
    Task NavigateToAsync(string route);

    /// <summary>Navigates with a dictionary of query parameters passed to the destination.</summary>
    Task NavigateToAsync(string route, Dictionary<string, object> parameters);

    /// <summary>Goes back one level in the navigation stack (<c>..</c>).</summary>
    Task NavigateBackAsync();

    /// <summary>Resets navigation to the login route (<c>//login</c>).</summary>
    Task NavigateToRootAsync();

    /// <summary>Pops the modal/navigation stack to root for the current window.</summary>
    Task PopToRootAsync();
}