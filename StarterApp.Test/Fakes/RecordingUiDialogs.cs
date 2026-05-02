using StarterApp.Services;

namespace StarterApp.Test.Fakes;

/// <summary>Records dialog calls and returns configurable outcomes for ViewModel tests.</summary>
public sealed class RecordingUiDialogs : IUiDialogs
{
    public List<(string Title, string Message, string Accept, string Cancel)> Confirms { get; } = new();
    public List<(string Title, string Message, string Ok)> Infos { get; } = new();

    /// <summary>Return value for the next <see cref="DisplayConfirmAsync"/>; default true.</summary>
    public Queue<bool> ConfirmResults { get; } = new();

    public Task<bool> DisplayConfirmAsync(string title, string message, string accept, string cancel)
    {
        Confirms.Add((title, message, accept, cancel));
        var result = ConfirmResults.Count > 0 ? ConfirmResults.Dequeue() : true;
        return Task.FromResult(result);
    }

    public Task DisplayInfoAsync(string title, string message, string ok)
    {
        Infos.Add((title, message, ok));
        return Task.CompletedTask;
    }
}
