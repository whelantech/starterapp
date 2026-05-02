using StarterApp.Services;

namespace StarterApp.Test.Fakes;

/// <summary>Captures shell <see cref="IShellNavigation"/> routes for ViewModel tests.</summary>
public sealed class FakeShellNavigation : IShellNavigation
{
    public List<string> Routes { get; } = new();

    public Task GoToAsync(string route)
    {
        Routes.Add(route);
        return Task.CompletedTask;
    }
}
