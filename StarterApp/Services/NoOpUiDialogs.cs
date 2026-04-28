namespace StarterApp.Services;

/// <summary>Design-time / headless: alerts do nothing or return <c>false</c>.</summary>
public sealed class NoOpUiDialogs : IUiDialogs
{
    public static NoOpUiDialogs Instance { get; } = new();

    public Task<bool> DisplayConfirmAsync(string title, string message, string accept, string cancel) =>
        Task.FromResult(false);

    public Task DisplayInfoAsync(string title, string message, string ok) => Task.CompletedTask;
}
