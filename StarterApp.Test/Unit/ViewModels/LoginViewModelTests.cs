using StarterApp.Services;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class LoginViewModelTests
{
    [Fact]
    public async Task LoginAsync_success_navigates_to_main()
    {
        var auth = new FakeAuthenticationService
        {
            NextLogin = new AuthenticationResult(true, "ok")
        };
        var nav = new FakeNavigationService();
        var ui = new RecordingUiDialogs();
        var vm = new LoginViewModel(auth, nav, ui) { Email = "a@test.com", Password = "secret" };

        await vm.LoginCommand.ExecuteAsync(null);

        Assert.False(vm.HasError);
        Assert.Single(nav.Navigations);
        Assert.Equal("MainPage", nav.Navigations[0].Route);
    }

    [Fact]
    public async Task LoginAsync_failure_sets_error()
    {
        var auth = new FakeAuthenticationService
        {
            NextLogin = new AuthenticationResult(false, "Bad creds")
        };
        var vm = new LoginViewModel(auth, new FakeNavigationService(), new RecordingUiDialogs())
        {
            Email = "a@test.com",
            Password = "x"
        };

        await vm.LoginCommand.ExecuteAsync(null);

        Assert.True(vm.HasError);
        Assert.Equal("Bad creds", vm.ErrorMessage);
    }

    [Fact]
    public async Task LoginAsync_empty_fields_sets_error()
    {
        var vm = new LoginViewModel(new FakeAuthenticationService(), new FakeNavigationService(),
            new RecordingUiDialogs());

        await vm.LoginCommand.ExecuteAsync(null);

        Assert.True(vm.HasError);
    }

    [Fact]
    public async Task NavigateToRegisterAsync_goes_to_register_route()
    {
        var nav = new FakeNavigationService();
        var vm = new LoginViewModel(new FakeAuthenticationService(), nav, new RecordingUiDialogs());

        await vm.NavigateToRegisterCommand.ExecuteAsync(null);

        Assert.Single(nav.Navigations);
        Assert.Equal("RegisterPage", nav.Navigations[0].Route);
    }

    [Fact]
    public async Task ForgotPasswordAsync_shows_info_dialog()
    {
        var ui = new RecordingUiDialogs();
        var vm = new LoginViewModel(new FakeAuthenticationService(), new FakeNavigationService(), ui);

        await vm.ForgotPasswordCommand.ExecuteAsync(null);

        Assert.Single(ui.Infos);
        Assert.Contains("not implemented", ui.Infos[0].Message, StringComparison.OrdinalIgnoreCase);
    }
}
