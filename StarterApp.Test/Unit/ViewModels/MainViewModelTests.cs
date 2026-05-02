using StarterApp.Database.Models;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;
using StarterApp.Views;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class MainViewModelTests
{
    [Fact]
    public void Constructor_loads_CurrentUser_IsAdmin_and_WelcomeMessage()
    {
        // Arrange
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User
            {
                Id = 1,
                Email = "a@b.co",
                FirstName = "Pat",
                LastName = "Smith",
                IsActive = true
            },
        };
        auth.CurrentUserRoles.Add("Admin");
        var nav = new FakeNavigationService();
        var ui = new RecordingUiDialogs();

        // Act
        var vm = new MainViewModel(auth, nav, ui);

        // Assert
        Assert.NotNull(vm.CurrentUser);
        Assert.Equal("Welcome, Pat Smith!", vm.WelcomeMessage);
        Assert.True(vm.IsAdmin);
    }

    [Fact]
    public async Task LogoutAsync_when_confirmed_calls_auth_and_navigates_LoginPage()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 9, Email = "x@y.z", FirstName = "A", LastName = "B" } };
        var nav = new FakeNavigationService();
        var ui = new RecordingUiDialogs();
        ui.ConfirmResults.Enqueue(true);
        var vm = new MainViewModel(auth, nav, ui);

        // Act
        await vm.LogoutCommand.ExecuteAsync(null);

        // Assert
        Assert.Null(auth.CurrentUser);
        Assert.Contains(nav.Navigations, n => n.Route == "LoginPage");
    }

    [Fact]
    public async Task LogoutAsync_when_not_confirmed_keeps_session()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 1, Email = "u@z.x", FirstName = "Z", LastName = "Z" } };
        var nav = new FakeNavigationService();
        var ui = new RecordingUiDialogs();
        ui.ConfirmResults.Enqueue(false);
        var vm = new MainViewModel(auth, nav, ui);

        // Act
        await vm.LogoutCommand.ExecuteAsync(null);

        // Assert
        Assert.NotNull(auth.CurrentUser);
        Assert.DoesNotContain(nav.Navigations, n => n.Route == "LoginPage");
    }

    [Fact]
    public async Task NavigateToProfileAsync_goes_UserDetailPage()
    {
        // Arrange
        var nav = new FakeNavigationService();
        var vm = new MainViewModel(new FakeAuthenticationService(), nav, new RecordingUiDialogs());

        // Act
        await vm.NavigateToProfileCommand.ExecuteAsync(null);

        // Assert
        Assert.Single(nav.Navigations, n => n.Route == nameof(UserDetailPage));
    }

    [Fact]
    public async Task NavigateToSettingsAsync_goes_TempPage()
    {
        var nav = new FakeNavigationService();
        var vm = new MainViewModel(new FakeAuthenticationService(), nav, new RecordingUiDialogs());

        await vm.NavigateToSettingsCommand.ExecuteAsync(null);

        Assert.Single(nav.Navigations, n => n.Route == "TempPage");
    }

    [Fact]
    public async Task NavigateToUserListAsync_when_not_admin_shows_dialog_not_navigated()
    {
        var nav = new FakeNavigationService();
        var ui = new RecordingUiDialogs();
        var vm = new MainViewModel(new FakeAuthenticationService(), nav, ui);

        await vm.NavigateToUserListCommand.ExecuteAsync(null);

        Assert.Contains(ui.Infos, i => i.Title == "Access Denied");
        Assert.DoesNotContain(nav.Navigations, n => n.Route == "UserListPage");
    }

    [Fact]
    public async Task NavigateToUserListAsync_when_admin_navigates()
    {
        var auth = new FakeAuthenticationService();
        auth.CurrentUserRoles.Add("Admin");
        var nav = new FakeNavigationService();
        var vm = new MainViewModel(auth, nav, new RecordingUiDialogs());

        await vm.NavigateToUserListCommand.ExecuteAsync(null);

        Assert.Single(nav.Navigations, n => n.Route == "UserListPage");
    }

    [Fact]
    public async Task NavigateToCreateItemAsync_on_nav_exception_sets_error()
    {
        var nav = new FakeNavigationService { NavigateToFault = new InvalidOperationException("route bad") };
        var vm = new MainViewModel(new FakeAuthenticationService(), nav, new RecordingUiDialogs());

        await vm.NavigateToCreateItemCommand.ExecuteAsync(null);

        Assert.True(vm.HasError);
        Assert.Contains("Could not open Create Item", vm.ErrorMessage, StringComparison.Ordinal);
    }

    [Fact]
    public async Task NavigateToItemsListAsync_uses_ItemsPage_route()
    {
        var nav = new FakeNavigationService();
        var vm = new MainViewModel(new FakeAuthenticationService(), nav, new RecordingUiDialogs());

        await vm.NavigateToItemsListCommand.ExecuteAsync(null);

        Assert.Single(nav.Navigations, n => n.Route == nameof(ItemsPage));
    }

    [Fact]
    public async Task NavigateToRentalsAsync_uses_RentalListsPage_route()
    {
        var nav = new FakeNavigationService();
        var vm = new MainViewModel(new FakeAuthenticationService(), nav, new RecordingUiDialogs());

        await vm.NavigateToRentalsCommand.ExecuteAsync(null);

        Assert.Single(nav.Navigations, n => n.Route == nameof(RentalListsPage));
    }

    [Fact]
    public async Task RefreshDataAsync_sets_IsBusy_and_completes()
    {
        var vm = new MainViewModel(new FakeAuthenticationService(), new FakeNavigationService(), new RecordingUiDialogs());

        await vm.RefreshDataCommand.ExecuteAsync(null);

        Assert.False(vm.IsBusy);
    }

    [Fact]
    public async Task RefreshDataAsync_when_LoadUserData_fails_sets_error()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 1, Email = "z@Z.z", FirstName = "a", LastName = "b" } };
        var vm = new MainViewModel(auth, new FakeNavigationService(), new RecordingUiDialogs());
        auth.CurrentUserAccessFault = new InvalidOperationException("boom");

        // Act
        await vm.RefreshDataCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("Failed to refresh data", vm.ErrorMessage, StringComparison.Ordinal);
    }
}
