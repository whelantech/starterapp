namespace StarterApp.Services;

public sealed class MauiUiDialogsService : IUiDialogs
{
    public async Task<bool> DisplayConfirmAsync(string title, string message, string accept, string cancel)
    {
        var page = Application.Current?.MainPage;
        if (page is null) return false;
        return await page.DisplayAlertAsync(title, message, accept, cancel);
    }

    public async Task DisplayInfoAsync(string title, string message, string ok)
    {
        var page = Application.Current?.MainPage;
        if (page is null) return;
        await page.DisplayAlertAsync(title, message, ok);
    }
}
