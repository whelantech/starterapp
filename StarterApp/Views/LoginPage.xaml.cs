using StarterApp.ViewModels;

namespace StarterApp.Views;

public partial class LoginPage : ContentPage
{
    public LoginPage(LoginViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        EmailEntry.Focus();
        // Test Credentials whilst I get the Auth working
        EmailEntry.Text = "test@test.com";
        PasswordEntry.Text = "Password1!";
    }
}