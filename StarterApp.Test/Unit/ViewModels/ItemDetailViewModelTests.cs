using StarterApp.Database.Models;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;
using StarterApp.Views;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class ItemDetailViewModelTests
{
    private static ItemDetailViewModel BuildSut(
        FakeItemRepository repo,
        FakeAuthenticationService auth,
        FakeNavigationService nav,
        FakeShellNavigation shell,
        FakeRentalService rental) =>
        new(repo, auth, rental, nav, shell);

    [Fact]
    public async Task ApplyQueryIdAsync_invalid_sets_error_and_clears_item()
    {
        // Arrange
        var vm = BuildSut(new FakeItemRepository(), new FakeAuthenticationService(),
            new FakeNavigationService(), new FakeShellNavigation(), new FakeRentalService());

        // Act
        await vm.ApplyQueryIdAsync("nope");

        // Assert
        Assert.True(vm.HasError);
        Assert.Null(vm.Item);
        Assert.False(vm.CanEdit);
    }

    [Fact]
    public async Task LoadAsync_not_found_sets_error()
    {
        // Arrange
        var vm = BuildSut(new FakeItemRepository(), new FakeAuthenticationService { CurrentUser = new User { Id = 9 } },
            new FakeNavigationService(), new FakeShellNavigation(), new FakeRentalService());

        // Act
        await vm.LoadAsync(404);

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("not found", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task LoadAsync_owner_sets_CanEdit_and_disables_Rent_offering()
    {
        // Arrange
        var repo = new FakeItemRepository();
        repo.Items.Add(new Item
        {
            Id = 50,
            Title = "Yo-yo",
            Description = "Spins",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = 700,
            IsAvailable = true,
            OwnerName = "Seller"
        });
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 700, Email = "a@a.a", FirstName = "a", LastName = "b" } };
        var rentals = new FakeRentalService { CanOfferRentOverride = (_, _) => false };
        var vm = BuildSut(repo, auth, new FakeNavigationService(), new FakeShellNavigation(), rentals);

        // Act
        await vm.LoadAsync(50);

        // Assert
        Assert.False(vm.HasError);
        Assert.True(vm.CanEdit);
        Assert.False(vm.CanRent);
    }

    [Fact]
    public async Task LoadAsync_non_owner_available_sets_CanRent_when_service_allows()
    {
        // Arrange
        var repo = new FakeItemRepository();
        repo.Items.Add(new Item
        {
            Id = 51,
            Title = "Lens",
            Description = "Glass",
            DailyRate = 2,
            CategoryId = 1,
            OwnerId = 800,
            IsAvailable = true
        });
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 801, Email = "b@b.b", FirstName = "x", LastName = "y" } };
        var rentals = new FakeRentalService { CanOfferRentOverride = (_, _) => true };
        var vm = BuildSut(repo, auth, new FakeNavigationService(), new FakeShellNavigation(), rentals);

        // Act
        await vm.LoadAsync(51);

        // Assert
        Assert.True(vm.CanRent);
        Assert.False(vm.CanEdit);
    }

    [Fact]
    public async Task RentAsync_navigates_to_RentalRequestPage_with_item_query()
    {
        // Arrange
        var repo = new FakeItemRepository();
        repo.Items.Add(new Item
        {
            Id = 91,
            Title = "Rent me",
            Description = "desc",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = 2,
            IsAvailable = true
        });
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 5, Email = "c@c.c", FirstName = "R", LastName = "Enter" } };
        var nav = new FakeNavigationService();
        var rentals = new FakeRentalService { CanOfferRentOverride = (_, _) => true };
        var vm = BuildSut(repo, auth, nav, new FakeShellNavigation(), rentals);

        await vm.LoadAsync(91);

        // Act
        await vm.RentCommand.ExecuteAsync(null);

        // Assert
        Assert.Contains(nav.Navigations,
            r => r.Route.Contains(nameof(RentalRequestPage), StringComparison.Ordinal) &&
                 r.Route.Contains("itemId=91", StringComparison.Ordinal));
    }

    [Fact]
    public async Task EditAsync_shell_route_targets_CreateItemPage_with_id()
    {
        var repo = new FakeItemRepository();
        repo.Items.Add(new Item
        {
            Id = 33,
            Title = "Mine",
            Description = "d",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = 10,
            IsAvailable = true
        });
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 10 } };
        var shell = new FakeShellNavigation();
        var vm = BuildSut(repo, auth, new FakeNavigationService(), shell, new FakeRentalService());
        await vm.LoadAsync(33);

        await vm.EditCommand.ExecuteAsync(null);

        Assert.Contains(shell.Routes,
            route => route.StartsWith(nameof(CreateItemPage), StringComparison.Ordinal)
                     && route.Contains("id=33", StringComparison.Ordinal));
    }

    [Fact]
    public async Task RefreshAsync_with_valid_id_keeps_loaded_item()
    {
        var repo = new FakeItemRepository();
        repo.Items.Add(new Item
        {
            Id = 71,
            Title = "Chair",
            Description = "Comfort",
            DailyRate = 3,
            CategoryId = 1,
            OwnerId = 66,
            IsAvailable = false
        });
        var auth = new FakeAuthenticationService { CurrentUser = new User { Id = 66 } };
        var vm = BuildSut(repo, auth, new FakeNavigationService(), new FakeShellNavigation(), new FakeRentalService());
        await vm.LoadAsync(71);

        await vm.RefreshCommand.ExecuteAsync(null);

        Assert.Equal("Chair", vm.Item?.Title);
    }
}
