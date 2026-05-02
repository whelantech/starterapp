using StarterApp.Database.Models;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class AppShellViewModelTests
{
    [Fact]
    public void AuthenticationStateChanged_handler_does_not_throw()
    {
        // Arrange
        var auth = new FakeAuthenticationService();
        var vm = new AppShellViewModel(auth, new FakeNavigationService());

        // Act
        auth.RaiseAuthenticationStateChanged(false);

        // Assert
        Assert.Equal("StarterApp", vm.Title);
    }

    [Fact]
    public async Task NavigateToProfileAsync_and_NavigateToSettingsAsync_use_TempPage()
    {
        // Arrange
        var nav = new FakeNavigationService();
        var vm = new AppShellViewModel(new FakeAuthenticationService(), nav);

        // Act
        await vm.NavigateToProfileCommand.ExecuteAsync(null);
        await vm.NavigateToSettingsCommand.ExecuteAsync(null);

        // Assert
        Assert.Equal(2, nav.Navigations.Count);
        Assert.All(nav.Navigations.Select(n => n.Route), r => Assert.Equal("TempPage", r));
    }

    [Fact]
    public void LogoutCommand_CanExecute_reflects_authentication()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 1, Email = "z@z.z", FirstName = "A", LastName = "B" } };
        var vm = new AppShellViewModel(auth, new FakeNavigationService());

        // Assert
        Assert.True(vm.LogoutCommand.CanExecute(null));

        // Act — drop session without going through Logout (simulates expiry); notifier must refresh CanExecute binding.
        auth.CurrentUser = null;
        vm.LogoutCommand.NotifyCanExecuteChanged();

        // Assert
        Assert.False(vm.LogoutCommand.CanExecute(null));
    }

    [Fact]
    public async Task LogoutAsync_clears_auth_and_navigates_LoginPage()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 2, Email = "z@z.z", FirstName = "X", LastName = "Y" } };
        var nav = new FakeNavigationService();
        var vm = new AppShellViewModel(auth, nav);

        // Act
        await vm.LogoutCommand.ExecuteAsync(null);

        // Assert
        Assert.Null(auth.CurrentUser);
        Assert.Single(nav.Navigations, n => n.Route == "LoginPage");
    }
}
