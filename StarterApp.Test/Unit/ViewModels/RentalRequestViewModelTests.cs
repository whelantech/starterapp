using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class RentalRequestViewModelTests
{
    [Fact]
    public async Task ApplyQueryItemIdAsync_invalid_sets_error()
    {
        var vm = new RentalRequestViewModel(
            new FakeItemRepository(),
            new FakeRentalRepository(),
            new FakeAuthenticationService(),
            new FakeNavigationService(),
            new RentalService(),
            new RecordingUiDialogs());

        await vm.ApplyQueryItemIdAsync("abc");

        Assert.True(vm.HasError);
    }

    [Fact]
    public async Task ApplyQueryItemIdAsync_loads_item_when_eligible()
    {
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

        var vm = new RentalRequestViewModel(
            items,
            new FakeRentalRepository(),
            auth,
            new FakeNavigationService(),
            new RentalService(),
            new RecordingUiDialogs());

        await vm.ApplyQueryItemIdAsync("3");

        Assert.False(vm.HasError);
        Assert.Equal("Kayak", vm.ItemTitle);
        Assert.Equal(20, vm.DailyRate);
    }

    [Fact]
    public async Task SubmitAsync_creates_request_and_navigates()
    {
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
        var vm = new RentalRequestViewModel(items, rentals, auth, nav, new RentalService(), ui);

        await vm.ApplyQueryItemIdAsync("5");
        await vm.SubmitCommand.ExecuteAsync(null);

        Assert.False(vm.HasError);
        Assert.Single(ui.Infos);
        Assert.Equal(1, nav.NavigateBackCount);
        Assert.Contains("RentalDetailPage", nav.Navigations[^1].Route, StringComparison.OrdinalIgnoreCase);
    }
}
