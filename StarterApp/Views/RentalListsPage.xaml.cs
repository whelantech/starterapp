using StarterApp.Database.Models;
using StarterApp.ViewModels;

namespace StarterApp.Views;

public partial class RentalListsPage : ContentPage
{
    private readonly RentalListsViewModel _viewModel;

    public RentalListsPage(RentalListsViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        _viewModel.SelectedRental = null;
        await _viewModel.LoadAsync();
    }

    private async void RentalsCollection_SelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is not Rental rental)
            return;

        try
        {
            await _viewModel.OpenRentalDetailAsync(rental);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Open rental detail failed: {ex}");
        }
    }
}
