using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;
using StarterApp.Views;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class RentalRequestViewModelTests
{
    private static RentalRequestViewModel CreateSut(FakeItemRepository items, FakeRentalRepository rentals,
        FakeAuthenticationService auth, FakeNavigationService nav, IRentalService rental, RecordingUiDialogs ui) =>
        new(items, rentals, auth, nav, rental, ui);

    [Fact]
    public async Task ApplyQueryItemIdAsync_invalid_sets_error()
    {
        // Arrange
        var vm = CreateSut(
            new FakeItemRepository(),
            new FakeRentalRepository(),
            new FakeAuthenticationService(),
            new FakeNavigationService(),
            new RentalService(),
            new RecordingUiDialogs());

        // Act
        await vm.ApplyQueryItemIdAsync("abc");

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("Invalid item", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task Load_without_signed_in_user_sets_error_from_load()
    {
        // Arrange
        var items = new FakeItemRepository();
        items.Items.Add(new Item { Id = 3, Title = "Kayak", Description = "", DailyRate = 1, CategoryId = 1, OwnerId = 9, IsAvailable = true });

        var vm = CreateSut(items, new FakeRentalRepository(), new FakeAuthenticationService(), new FakeNavigationService(),
            new RentalService(), new RecordingUiDialogs());

        // Act
        await vm.ApplyQueryItemIdAsync("3");

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("must be signed in", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task Load_when_item_missing_sets_not_found_message()
    {
        // Arrange
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 1, Email = "b@b.b", FirstName = "x", LastName = "y" } };
        var vm = CreateSut(new FakeItemRepository(), new FakeRentalRepository(), auth, new FakeNavigationService(),
            new RentalService(), new RecordingUiDialogs());

        // Act
        await vm.ApplyQueryItemIdAsync("99");

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("not found", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task ApplyQueryItemIdAsync_loads_item_when_eligible()
    {
        // Arrange
        var items = new FakeItemRepository();
        items.Items.Add(new Item
        {
            Id = 3,
            Title = "Kayak",
            Description = "Wet",
            DailyRate = 20,
            CategoryId = 1,
            OwnerName = "Seller",
            OwnerId = 99,
            IsAvailable = true
        });

        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 1, FirstName = "B", LastName = "R", Email = "b@test.com" }
        };

        var vm = CreateSut(items, new FakeRentalRepository(), auth, new FakeNavigationService(),
            new RentalService(), new RecordingUiDialogs());

        // Act
        await vm.ApplyQueryItemIdAsync("3");

        // Assert
        Assert.False(vm.HasError);
        Assert.Equal("Kayak", vm.ItemTitle);
        Assert.Equal(20, vm.DailyRate);
    }

    [Fact]
    public async Task SubmitAsync_blocked_when_policies_decline_offer()
    {
        // Arrange
        var rentalSvc = new FakeRentalService { CanOfferRentOverride = (_, _) => false };
        var items = new FakeItemRepository();
        items.Items.Add(new Item
        {
            Id = 5,
            Title = "Bike",
            Description = "Fast",
            DailyRate = 15,
            CategoryId = 1,
            OwnerName = "O",
            OwnerId = 40,
            IsAvailable = true
        });

        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 10, FirstName = "Bo", LastName = "Row", Email = "bo@test.com" }
        };

        var vm = CreateSut(items, new FakeRentalRepository(), auth, new FakeNavigationService(), rentalSvc, new RecordingUiDialogs());

        await vm.ApplyQueryItemIdAsync("5");

        // Act
        await vm.SubmitCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("cannot rent", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task SubmitAsync_success_creates_record_and_follows_navigation()
    {
        // Arrange
        var items = new FakeItemRepository();
        items.Items.Add(new Item
        {
            Id = 5,
            Title = "Bike",
            Description = "Fast",
            DailyRate = 15,
            CategoryId = 1,
            OwnerName = "O",
            OwnerId = 40,
            IsAvailable = true
        });

        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 10, FirstName = "Bo", LastName = "Row", Email = "bo@test.com" }
        };

        var rentals = new FakeRentalRepository();
        var nav = new FakeNavigationService();
        var ui = new RecordingUiDialogs();
        var vm = CreateSut(items, rentals, auth, nav, new RentalService(), ui);

        await vm.ApplyQueryItemIdAsync("5");

        // Act
        await vm.SubmitCommand.ExecuteAsync(null);

        // Assert
        Assert.False(vm.HasError);
        Assert.Single(ui.Infos);
        Assert.Equal(1, nav.NavigateBackCount);
        Assert.Contains(nameof(RentalDetailPage), nav.Navigations[^1].Route, StringComparison.OrdinalIgnoreCase);
        Assert.Single(rentals.Rentals);
    }

    [Fact]
    public void ctor_FakeItem_repository_enables_ShowCommentsPersistHint()
    {
        var vm = CreateSut(
            new FakeItemRepository(),
            new FakeRentalRepository(),
            new FakeAuthenticationService(),
            new FakeNavigationService(),
            new RentalService(),
            new RecordingUiDialogs());

        Assert.True(vm.ShowCommentsPersistHint);
    }

    [Fact]
    public async Task CancelAsync_calls_NavigateBack()
    {
        // Arrange
        var nav = new FakeNavigationService();
        var vm = CreateSut(new FakeItemRepository(), new FakeRentalRepository(), new FakeAuthenticationService(),
            nav, new RentalService(), new RecordingUiDialogs());

        // Act
        await vm.CancelCommand.ExecuteAsync(null);

        // Assert
        Assert.Equal(1, nav.NavigateBackCount);
    }
}
