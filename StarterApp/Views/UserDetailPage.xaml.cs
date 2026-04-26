using StarterApp.ViewModels;

namespace StarterApp.Views;

public partial class UserDetailPage : ContentPage
{
    private readonly UserListViewModel _viewModel;

    public UserDetailPage(UserListViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
        _viewModel = viewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        if (_viewModel.CurrentUser == null)
        {
            await _viewModel.LoadUserCommand.ExecuteAsync(null);
        }
    }
}