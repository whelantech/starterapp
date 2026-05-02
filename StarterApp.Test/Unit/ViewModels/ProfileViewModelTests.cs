using StarterApp.Database.Models;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class ProfileViewModelTests
{
    private static ProfileViewModel CreateSut(
        FakeAuthenticationService auth,
        FakeNavigationService nav,
        RecordingUiDialogs ui) =>
        new(auth, nav, ui);

    [Fact]
    public void Constructor_loads_CurrentUser()
    {
        // Arrange
        var user = new User { Id = 1, Email = "e@e.e", FirstName = "F", LastName = "L" };
        var auth = new FakeAuthenticationService { CurrentUser = user };

        // Act
        var vm = CreateSut(auth, new FakeNavigationService(), new RecordingUiDialogs());

        // Assert
        Assert.Equal(user, vm.CurrentUser);
        Assert.Equal("Profile", vm.Title);
    }

    [Theory]
    [InlineData("", "newPw11", "newPw11", "Current password is required")]
    [InlineData("old", "", "x", "New password is required")]
    [InlineData("old", "short", "short", "New password must be at least 6 characters long")]
    [InlineData("old", "secret1", "secret2", "New passwords do not match")]
    [InlineData("current1", "current1", "current1", "New password must be different from current password")]
    public async Task ChangePasswordAsync_validation_errors(
        string current, string newPw, string confirm, string expectedFragment)
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 1 } };
        var vm = CreateSut(auth, new FakeNavigationService(), new RecordingUiDialogs());
        vm.CurrentPassword = current;
        vm.NewPassword = newPw;
        vm.ConfirmNewPassword = confirm;

        // Act
        await vm.ChangePasswordCommand.ExecuteAsync(null);

        // Assert
        Assert.False(vm.IsBusy);
        Assert.Contains(expectedFragment, vm.ErrorMessage, StringComparison.Ordinal);
    }

    [Fact]
    public async Task ChangePasswordAsync_success_shows_dialog_and_clears_fields()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 1 }, ChangePasswordReturns = true };
        var ui = new RecordingUiDialogs();
        var vm = CreateSut(auth, new FakeNavigationService(), ui);
        vm.CurrentPassword = "old";
        vm.NewPassword = "secret1";
        vm.ConfirmNewPassword = "secret1";
        vm.IsChangingPassword = true;

        // Act
        await vm.ChangePasswordCommand.ExecuteAsync(null);

        // Assert
        Assert.False(vm.HasError);
        Assert.False(vm.IsChangingPassword);
        Assert.Empty(vm.CurrentPassword);
        Assert.Contains(ui.Infos, i => i.Title == "Success");
    }

    [Fact]
    public async Task ChangePasswordAsync_when_auth_returns_false_sets_error()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 1 }, ChangePasswordReturns = false };
        var vm = CreateSut(auth, new FakeNavigationService(), new RecordingUiDialogs());
        vm.CurrentPassword = "c";
        vm.NewPassword = "newnew";
        vm.ConfirmNewPassword = "newnew";

        // Act
        await vm.ChangePasswordCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("Failed to change password", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task ChangePasswordAsync_when_auth_throws_sets_error()
    {
        // Arrange
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 1 },
            ChangePasswordThrows = new InvalidOperationException("offline")
        };
        var vm = CreateSut(auth, new FakeNavigationService(), new RecordingUiDialogs());
        vm.CurrentPassword = "c";
        vm.NewPassword = "newnew2";
        vm.ConfirmNewPassword = "newnew2";

        // Act
        await vm.ChangePasswordCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("Password change failed", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task ChangePasswordAsync_when_IsBusy_returns_immediately_without_clearing_busy()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 1 }, ChangePasswordReturns = true };
        var vm = CreateSut(auth, new FakeNavigationService(), new RecordingUiDialogs());
        vm.IsBusy = true;
        vm.CurrentPassword = "a";
        vm.NewPassword = "bbbbbb";
        vm.ConfirmNewPassword = "bbbbbb";

        // Act
        await vm.ChangePasswordCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.IsBusy);
    }

    [Fact]
    public void TogglePasswordChangeMode_when_disabling_password_mode_clears_fields_and_errors()
    {
        // Arrange
        var vm = CreateSut(new FakeAuthenticationService { CurrentUser = new User() }, new FakeNavigationService(),
            new RecordingUiDialogs());
        vm.IsChangingPassword = true;
        vm.CurrentPassword = "a";
        vm.NewPassword = "b";
        vm.ConfirmNewPassword = "c";
        vm.ErrorMessage = "some error";
        vm.HasError = true;

        // Act
        vm.TogglePasswordChangeModeCommand.Execute(null);

        // Assert
        Assert.False(vm.IsChangingPassword);
        Assert.Empty(vm.CurrentPassword);
        Assert.Empty(vm.NewPassword);
        Assert.Empty(vm.ConfirmNewPassword);
        Assert.False(vm.HasError);
    }

    [Fact]
    public async Task NavigateBackAsync_calls_navigation_service()
    {
        // Arrange
        var nav = new FakeNavigationService();
        var vm = CreateSut(new FakeAuthenticationService { CurrentUser = new User() }, nav, new RecordingUiDialogs());

        // Act
        await vm.NavigateBackCommand.ExecuteAsync(null);

        // Assert
        Assert.Equal(1, nav.NavigateBackCount);
    }
}
