using Microsoft.Maui.Controls;
using StarterApp.ViewModels;

namespace StarterApp.Views;

[QueryProperty(nameof(RentalId), "rentalId")]
public partial class RentalDetailPage : ContentPage
{
    private readonly RentalDetailViewModel _viewModel;

    public RentalDetailPage(RentalDetailViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }

    public string? RentalId
    {
        get => _rentalId;
        set
        {
            _rentalId = value;
            if (string.IsNullOrWhiteSpace(value))
                return;

            _ = SafeApplyQueryAsync(value);
        }
    }

    private string? _rentalId;

    private async Task SafeApplyQueryAsync(string value)
    {
        try
        {
            await _viewModel.ApplyQueryRentalIdAsync(value);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"RentalDetail query load failed: {ex}");
        }
    }
}
