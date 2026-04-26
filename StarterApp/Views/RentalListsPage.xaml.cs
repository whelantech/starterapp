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
        await _viewModel.LoadAsync();
    }
}
