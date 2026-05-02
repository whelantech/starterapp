using StarterApp.Services;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class LoginViewModelTests
{
    [Fact]
    public async Task LoginAsync_success_navigates_to_main()
    {
        // Arrange
        var auth = new FakeAuthenticationService
        {
            NextLogin = new AuthenticationResult(true, "ok")
        };
        var nav = new FakeNavigationService();
        var ui = new RecordingUiDialogs();
        var vm = new LoginViewModel(auth, nav, ui) { Email = "a@test.com", Password = "secret" };

        // Act
        await vm.LoginCommand.ExecuteAsync(null);

        // Assert
        Assert.False(vm.HasError);
        Assert.Single(nav.Navigations);
        Assert.Equal("MainPage", nav.Navigations[0].Route);
    }

    [Fact]
    public async Task LoginAsync_failure_sets_error()
    {
        // Arrange
        var auth = new FakeAuthenticationService
        {
            NextLogin = new AuthenticationResult(false, "Bad creds")
        };
        var vm = new LoginViewModel(auth, new FakeNavigationService(), new RecordingUiDialogs())
        {
            Email = "a@test.com",
            Password = "x"
        };

        // Act
        await vm.LoginCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.HasError);
        Assert.Equal("Bad creds", vm.ErrorMessage);
    }

    [Fact]
    public async Task LoginAsync_empty_email_or_password_sets_error()
    {
        // Arrange
        var vm = new LoginViewModel(new FakeAuthenticationService(), new FakeNavigationService(),
            new RecordingUiDialogs())
        {
            Email = "   ",
            Password = ""
        };

        // Act
        await vm.LoginCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("Please enter both", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task LoginAsync_when_exception_sets_user_friendly_message()
    {
        // Arrange
        var auth = new FakeAuthenticationService { LoginAsyncFault = new InvalidOperationException("boom") };
        var vm = new LoginViewModel(auth, new FakeNavigationService(), new RecordingUiDialogs())
        {
            Email = "a@test.com",
            Password = "sec"
        };

        // Act
        await vm.LoginCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.HasError);
        Assert.StartsWith("Login failed:", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
        Assert.Contains("boom", vm.ErrorMessage, StringComparison.Ordinal);
    }

    [Fact]
    public void LoginCommand_CanExecute_respects_IsBusy_toggle()
    {
        // Arrange
        var vm = new LoginViewModel(new FakeAuthenticationService(), new FakeNavigationService(), new RecordingUiDialogs())
        {
            Email = "a@test.com",
            Password = "ok"
        };

        // Assert
        Assert.True(vm.LoginCommand.CanExecute(null));

        // Act — busy overlays disable login retries
        vm.IsBusy = true;

        // Assert
        Assert.False(vm.LoginCommand.CanExecute(null));

        // Act — restore idle
        vm.IsBusy = false;

        Assert.True(vm.LoginCommand.CanExecute(null));
    }

    [Fact]
    public async Task NavigateToRegisterAsync_goes_to_register_route()
    {
        // Arrange
        var nav = new FakeNavigationService();
        var vm = new LoginViewModel(new FakeAuthenticationService(), nav, new RecordingUiDialogs());

        // Act
        await vm.NavigateToRegisterCommand.ExecuteAsync(null);

        // Assert
        Assert.Single(nav.Navigations);
        Assert.Equal("RegisterPage", nav.Navigations[0].Route);
    }

    [Fact]
    public async Task ForgotPasswordAsync_shows_info_dialog()
    {
        // Arrange
        var ui = new RecordingUiDialogs();
        var vm = new LoginViewModel(new FakeAuthenticationService(), new FakeNavigationService(), ui);

        // Act
        await vm.ForgotPasswordCommand.ExecuteAsync(null);

        // Assert
        Assert.Single(ui.Infos);
        Assert.Contains("not implemented", ui.Infos[0].Message, StringComparison.OrdinalIgnoreCase);
    }
}
