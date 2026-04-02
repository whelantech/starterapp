using StarterApp.ViewModels;

namespace StarterApp.Views;

public partial class ItemsPage : ContentPage
{
    private readonly ItemListViewModel _viewModel;

    public ItemsPage(ItemListViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel; 
        BindingContext = _viewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await _viewModel.InitializeAsync();
    }
}