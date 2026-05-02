using Microsoft.EntityFrameworkCore;
using Microsoft.Maui.Controls;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Test.Fakes;
using StarterApp.Test.Fixtures;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class UserDetailViewModelTests
{
    /// <summary>
    /// <see cref="UserDetailViewModel"/> starts load on a thread-pool task; <see cref="UserDetailViewModel.IsLoading"/>
    /// may still be false on the very next line, so we briefly yield before waiting for the load cycle to finish.
    /// </summary>
    private static async Task WaitUserDetailLoadFinishedAsync(UserDetailViewModel vm)
    {
        await Task.Delay(150);
        await WaitUntilAsync(() => !vm.IsLoading);
    }

    private static async Task WaitUntilAsync(Func<bool> condition, int timeoutMs = 15000)
    {
        var deadline = DateTime.UtcNow.AddMilliseconds(timeoutMs);
        while (DateTime.UtcNow < deadline)
        {
            if (condition())
                return;
            await Task.Delay(30);
        }

        Assert.Fail("Timed out waiting for async view model work to finish.");
    }

    private static FakeAuthenticationService AdminAuth(User adminUser)
    {
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User
            {
                Id = adminUser.Id,
                Email = adminUser.Email,
                FirstName = adminUser.FirstName,
                LastName = adminUser.LastName,
                IsActive = adminUser.IsActive
            }
        };
        auth.CurrentUserRoles.Add(RoleConstants.Admin);
        return auth;
    }

    private static (DatabaseFixture fx, User admin, User other) CreateAdminAndOther()
    {
        var fx = new DatabaseFixture();
        var ctx = fx.Context;

        var adminRole = new Role { Name = RoleConstants.Admin, Description = "admin" };
        ctx.Roles.Add(adminRole);
        ctx.SaveChanges();

        var admin = ctx.Users.OrderBy(u => u.Id).First();
        ctx.UserRoles.Add(new UserRole(admin.Id, adminRole.Id));
        ctx.SaveChanges();

        var other = new User
        {
            Email = $"other_{Guid.NewGuid():N}@test.local",
            FirstName = "Other",
            LastName = "Person",
            PasswordHash = "h",
            PasswordSalt = "s",
            CreatedAt = DateTime.UtcNow,
            UpdatedAt = DateTime.UtcNow,
            IsActive = true
        };
        ctx.Users.Add(other);
        ctx.SaveChanges();

        return (fx, admin, other);
    }

    [Fact]
    public async Task UserId_set_without_admin_role_navigates_to_MainPage()
    {
        // Arrange
        using var fx = new DatabaseFixture();
        var nav = new FakeNavigationService();
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 999, Email = "x@x.x", FirstName = "N", LastName = "A" }
        };
        var vm = new UserDetailViewModel(fx.Context, nav, auth, new RecordingUiDialogs());

        // Act
        vm.UserId = 0;
        await WaitUntilAsync(() => nav.Navigations.Any(n => n.Route == "MainPage"));

        // Assert
        Assert.Contains(nav.Navigations, n => n.Route == "MainPage");
    }

    [Fact]
    public async Task UserId_zero_with_admin_shows_new_user_mode()
    {
        // Arrange
        var (fx, admin, _) = CreateAdminAndOther();
        using (fx)
        {
            var nav = new FakeNavigationService();
            var vm = new UserDetailViewModel(fx.Context, nav, AdminAuth(admin), new RecordingUiDialogs());

            // Act
            vm.UserId = 0;
            await WaitUserDetailLoadFinishedAsync(vm);

            Assert.True(string.IsNullOrEmpty(vm.ErrorMessage), vm.ErrorMessage ?? "(null)");
            Assert.True(vm.IsNewUser);
            Assert.Equal("Create New User", vm.PageTitle);
            Assert.True(vm.ShowPasswordFields);
        }
    }

    [Fact]
    public async Task UserId_existing_loads_fields()
    {
        var (fx, admin, other) = CreateAdminAndOther();
        using (fx)
        {
            var nav = new FakeNavigationService();
            var vm = new UserDetailViewModel(fx.Context, nav, AdminAuth(admin), new RecordingUiDialogs());

            vm.UserId = other.Id;
            await WaitUserDetailLoadFinishedAsync(vm);

            Assert.False(vm.IsNewUser);
            Assert.Equal(other.FirstName, vm.FirstName);
            Assert.Equal(other.Email, vm.Email);
        }
    }

    [Fact]
    public async Task NavigateToDashboardCommand_navigates_MainPage()
    {
        var (fx, admin, _) = CreateAdminAndOther();
        using (fx)
        {
            var nav = new FakeNavigationService();
            var vm = new UserDetailViewModel(fx.Context, nav, AdminAuth(admin), new RecordingUiDialogs());

            await vm.NavigateToDashboardCommand.ExecuteAsync(null);

            Assert.Single(nav.Navigations, n => n.Route == "MainPage");
        }
    }

    [Fact]
    public async Task SaveUser_with_empty_first_name_sets_ErrorMessage()
    {
        var (fx, admin, _) = CreateAdminAndOther();
        using (fx)
        {
            var vm = new UserDetailViewModel(fx.Context, new FakeNavigationService(), AdminAuth(admin), new RecordingUiDialogs());
            vm.UserId = 0;
            await WaitUserDetailLoadFinishedAsync(vm);

            vm.FirstName = "";
            vm.LastName = "L";
            vm.Email = "valid_mail@test.local";
            vm.Password = "secret1";
            vm.ConfirmPassword = "secret1";

            vm.SaveUserCommand.Execute(null);
            await WaitUntilAsync(() => !string.IsNullOrEmpty(vm.ErrorMessage), 5000);

            Assert.Contains("First name is required", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
        }
    }

    [Fact]
    public async Task SaveUser_duplicate_email_sets_ErrorMessage()
    {
        var (fx, admin, _) = CreateAdminAndOther();
        using (fx)
        {
            var nav = new FakeNavigationService();
            var vm = new UserDetailViewModel(fx.Context, nav, AdminAuth(admin), new RecordingUiDialogs());
            vm.UserId = 0;
            await WaitUserDetailLoadFinishedAsync(vm);

            var taken = await fx.Context.Users.AsNoTracking().Select(u => u.Email).FirstAsync();
            vm.FirstName = "Dup";
            vm.LastName = "Dup";
            vm.Email = taken;
            vm.Password = "secret1";
            vm.ConfirmPassword = "secret1";
            ((Command)vm.SaveUserCommand).ChangeCanExecute();

            vm.SaveUserCommand.Execute(null);
            await WaitUntilAsync(() => !vm.IsLoading, 20000);
            await WaitUntilAsync(() => !string.IsNullOrEmpty(vm.ErrorMessage) || nav.Navigations.Any(), 5000);

            Assert.Contains("Error saving user", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
            Assert.DoesNotContain(nav.Navigations, n => n.Route == "UserListPage");
        }
    }
    [Fact]
    public async Task DeleteUser_when_cancelled_leaves_active()
    {
        var (fx, admin, other) = CreateAdminAndOther();
        using (fx)
        {
            var ui = new RecordingUiDialogs();
            ui.ConfirmResults.Enqueue(false);
            var vm = new UserDetailViewModel(fx.Context, new FakeNavigationService(), AdminAuth(admin), ui);
            vm.UserId = other.Id;
            await WaitUserDetailLoadFinishedAsync(vm);

            vm.DeleteUserCommand.Execute(null);
            await Task.Delay(200);

            var reloaded = await fx.Context.Users.AsNoTracking().FirstAsync(u => u.Id == other.Id);
            Assert.True(reloaded.IsActive);
        }
    }
}

public sealed class RoleItemTests
{
    [Fact]
    public void IsAssigned_updates_ButtonText_and_colors()
    {
        // Arrange
        var ri = new RoleItem { Id = 1, Name = "Admin", Description = "d", IsAssigned = false };

        // Assert initial
        Assert.Equal("Add", ri.ButtonText);
        Assert.Equal(Microsoft.Maui.Graphics.Color.FromArgb("#28a745"), ri.ButtonColor);

        // Act
        ri.IsAssigned = true;

        // Assert
        Assert.Equal("Remove", ri.ButtonText);
        Assert.Equal(Microsoft.Maui.Graphics.Color.FromArgb("#dc3545"), ri.ButtonColor);
    }
}
