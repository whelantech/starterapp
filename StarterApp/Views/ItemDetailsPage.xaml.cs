using Microsoft.Maui.Controls;
using StarterApp.ViewModels;

namespace StarterApp.Views;

/// <summary>
/// Uses <see cref="QueryPropertyAttribute"/> so <c>?id=</c> is applied reliably on Android/iOS
/// (Shell often does not expose the query string on <see cref="Shell.CurrentState"/>).
/// </summary>
[QueryProperty(nameof(ItemId), "id")]
public partial class ItemDetailsPage : ContentPage
{
    private readonly ItemDetailViewModel _viewModel;

    public ItemDetailsPage(ItemDetailViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }

    /// <summary>Bound from route <c>ItemDetailsPage?id=123</c>.</summary>
    public string? ItemId
    {
        get => _itemId;
        set
        {
            _itemId = value;
            if (string.IsNullOrWhiteSpace(value))
                return;

            // Avoid unobserved task exceptions if anything faults outside the VM try/catch.
            _ = SafeApplyQueryAsync(value);
        }
    }

    private string? _itemId;

    private async Task SafeApplyQueryAsync(string value)
    {
        try
        {
            await _viewModel.ApplyQueryIdAsync(value);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"ItemDetails query load failed: {ex}");
        }
    }
}
