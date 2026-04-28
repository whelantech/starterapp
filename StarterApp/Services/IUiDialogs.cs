namespace StarterApp.Services;

/// <summary>
/// Page alert abstraction for unit tests (avoids <see cref="Application.Current" /> in ViewModels).
/// </summary>
public interface IUiDialogs
{
    /// <summary>Two-button confirm; returns <c>true</c> if the user accepts.</summary>
    Task<bool> DisplayConfirmAsync(string title, string message, string accept, string cancel);

    /// <summary>Single-button informational alert.</summary>
    Task DisplayInfoAsync(string title, string message, string ok);
}
