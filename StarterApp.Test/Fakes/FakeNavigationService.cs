using StarterApp.Services;

namespace StarterApp.Test.Fakes;

/// <summary>Captures navigation calls for ViewModel unit tests.</summary>
public sealed class FakeNavigationService : INavigationService
{
    public List<(string Route, Dictionary<string, object>? Parameters)> Navigations { get; } = new();
    public int NavigateBackCount { get; private set; }
    public int NavigateToRootCount { get; private set; }
    public int PopToRootCount { get; private set; }

    public Task NavigateToAsync(string route)
    {
        Navigations.Add((route, null));
        return Task.CompletedTask;
    }

    public Task NavigateToAsync(string route, Dictionary<string, object> parameters)
    {
        Navigations.Add((route, parameters));
        return Task.CompletedTask;
    }

    public Task NavigateBackAsync()
    {
        NavigateBackCount++;
        return Task.CompletedTask;
    }

    public Task NavigateToRootAsync()
    {
        NavigateToRootCount++;
        return Task.CompletedTask;
    }

    public Task PopToRootAsync()
    {
        PopToRootCount++;
        return Task.CompletedTask;
    }
}
