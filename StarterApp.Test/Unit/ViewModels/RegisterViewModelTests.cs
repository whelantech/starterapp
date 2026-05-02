using StarterApp.Services;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class RegisterViewModelTests
{
    private static RegisterViewModel CreateValidVm(FakeAuthenticationService auth, FakeNavigationService nav,
        RecordingUiDialogs ui) =>
        new(auth, nav, ui)
        {
            FirstName = "Ann",
            LastName = "Bee",
            Email = "ann@example.com",
            Password = "secret1",
            ConfirmPassword = "secret1",
            AcceptTerms = true
        };

    [Fact]
    public async Task RegisterAsync_success_shows_dialog_and_navigates_back()
    {
        var auth = new FakeAuthenticationService { NextRegister = new AuthenticationResult(true, "ok") };
        var nav = new FakeNavigationService();
        var ui = new RecordingUiDialogs();
        var vm = CreateValidVm(auth, nav, ui);

        await vm.RegisterCommand.ExecuteAsync(null);

        Assert.False(vm.HasError);
        Assert.Single(ui.Infos);
        Assert.Equal(1, nav.NavigateBackCount);
    }

    [Fact]
    public async Task RegisterAsync_failure_sets_error()
    {
        var auth = new FakeAuthenticationService { NextRegister = new AuthenticationResult(false, "Email taken") };
        var vm = CreateValidVm(auth, new FakeNavigationService(), new RecordingUiDialogs());

        await vm.RegisterCommand.ExecuteAsync(null);

        Assert.True(vm.HasError);
        Assert.Equal("Email taken", vm.ErrorMessage);
    }

    [Theory]
    [InlineData("", "Bee", "a@b.com", "pw123", "pw123", true, "First name")]
    [InlineData("A", "", "a@b.com", "pw123", "pw123", true, "Last name")]
    [InlineData("A", "B", "not-email", "pw123", "pw123", true, "valid email")]
    [InlineData("A", "B", "a@b.com", "pw", "pw", true, "at least 6")]
    [InlineData("A", "B", "a@b.com", "pw1234", "other", true, "do not match")]
    [InlineData("A", "B", "a@b.com", "pw1234", "pw1234", false, "terms")]
    public async Task RegisterAsync_validation_sets_error(string first, string last, string email, string pw,
        string confirm, bool terms, string expectedFragment)
    {
        var vm = new RegisterViewModel(new FakeAuthenticationService(), new FakeNavigationService(),
            new RecordingUiDialogs())
        {
            FirstName = first,
            LastName = last,
            Email = email,
            Password = pw,
            ConfirmPassword = confirm,
            AcceptTerms = terms
        };

        await vm.RegisterCommand.ExecuteAsync(null);

        Assert.True(vm.HasError);
        Assert.Contains(expectedFragment, vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task NavigateBackToLoginAsync_calls_navigation_back()
    {
        var nav = new FakeNavigationService();
        var vm = CreateValidVm(new FakeAuthenticationService(), nav, new RecordingUiDialogs());

        await vm.NavigateBackToLoginCommand.ExecuteAsync(null);

        Assert.Equal(1, nav.NavigateBackCount);
    }
}
