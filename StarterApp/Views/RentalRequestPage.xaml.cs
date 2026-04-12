using StarterApp.ViewModels;

namespace StarterApp.Views;

[QueryProperty(nameof(ItemId), "itemId")]
public partial class RentalRequestPage : ContentPage
{
    private readonly RentalRequestViewModel _viewModel;

    public RentalRequestPage(RentalRequestViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }

    public string? ItemId
    {
        get => _itemId;
        set
        {
            _itemId = value;
            if (string.IsNullOrWhiteSpace(value))
                return;
            _ = SafeApplyAsync(value);
        }
    }

    private string? _itemId;

    private async Task SafeApplyAsync(string value)
    {
        try
        {
            await _viewModel.ApplyQueryItemIdAsync(value);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"RentalRequest query load failed: {ex}");
        }
    }
}
