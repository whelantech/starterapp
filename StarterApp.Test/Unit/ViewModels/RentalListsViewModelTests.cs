using StarterApp.Database.Models;
using StarterApp.Database.Workflow;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class RentalListsViewModelTests
{
    [Fact]
    public async Task LoadAsync_without_user_clears_and_sets_error()
    {
        // Arrange
        var vm = new RentalListsViewModel(new FakeRentalRepository(), new FakeAuthenticationService(),
            new FakeNavigationService());

        // Act
        await vm.LoadCommand.ExecuteAsync(null);

        // Assert
        Assert.True(vm.HasError);
        Assert.Empty(vm.Rentals);
    }

    [Fact]
    public async Task LoadAsync_outgoing_filters_returned_status()
    {
        // Arrange
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 7, Email = "u@test.com", FirstName = "U", LastName = "Ser" }
        };
        var rentals = new FakeRentalRepository();
        rentals.Rentals.Add(new Rental
        {
            Id = 1,
            ItemId = 1,
            BorrowerUserId = 7,
            OwnerId = 2,
            StartDate = DateOnly.Parse("2026-02-01"),
            EndDate = DateOnly.Parse("2026-02-02"),
            Status = RentalStatusValues.Requested,
            TotalPrice = 1,
            CreatedAt = DateTime.UtcNow
        });
        rentals.Rentals.Add(new Rental
        {
            Id = 2,
            ItemId = 1,
            BorrowerUserId = 7,
            OwnerId = 2,
            StartDate = DateOnly.Parse("2026-03-01"),
            EndDate = DateOnly.Parse("2026-03-02"),
            Status = RentalStatusValues.Returned,
            TotalPrice = 1,
            CreatedAt = DateTime.UtcNow
        });

        var vm = new RentalListsViewModel(rentals, auth, new FakeNavigationService()) { ScopeIndex = 0 };

        // Act
        await vm.LoadCommand.ExecuteAsync(null);

        // Assert
        Assert.False(vm.HasError);
        Assert.Single(vm.Rentals);
        Assert.Equal(1, vm.Rentals[0].Id);
    }

    [Fact]
    public async Task LoadAsync_incoming_filters_rejected()
    {
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 2, Email = "o@test.com", FirstName = "O", LastName = "Wner" }
        };
        var rentals = new FakeRentalRepository();
        rentals.Rentals.Add(new Rental
        {
            Id = 1,
            ItemId = 1,
            BorrowerUserId = 7,
            OwnerId = 2,
            StartDate = DateOnly.Parse("2026-02-01"),
            EndDate = DateOnly.Parse("2026-02-02"),
            Status = RentalStatusValues.Requested,
            TotalPrice = 1,
            CreatedAt = DateTime.UtcNow
        });
        rentals.Rentals.Add(new Rental
        {
            Id = 2,
            ItemId = 1,
            BorrowerUserId = 7,
            OwnerId = 2,
            StartDate = DateOnly.Parse("2026-03-01"),
            EndDate = DateOnly.Parse("2026-03-02"),
            Status = RentalStatusValues.Rejected,
            TotalPrice = 1,
            CreatedAt = DateTime.UtcNow
        });

        var vm = new RentalListsViewModel(rentals, auth, new FakeNavigationService()) { ScopeIndex = 1 };

        await vm.LoadCommand.ExecuteAsync(null);

        Assert.False(vm.HasError);
        Assert.Single(vm.Rentals);
        Assert.Equal(RentalStatusValues.Requested, RentalStatusNormalizer.Normalize(vm.Rentals[0].Status));
    }

    [Fact]
    public async Task ScopeIndex_changed_triggers_background_load_so_list_updates()
    {
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 2, Email = "o@test.com", FirstName = "O", LastName = "Wner" }
        };
        var rentals = new FakeRentalRepository();
        rentals.Rentals.Add(new Rental
        {
            Id = 101,
            ItemId = 1,
            BorrowerUserId = 7,
            OwnerId = 2,
            StartDate = DateOnly.Parse("2026-03-05"),
            EndDate = DateOnly.Parse("2026-03-06"),
            Status = RentalStatusValues.Requested,
            TotalPrice = 1,
            CreatedAt = DateTime.UtcNow
        });
        var vm = new RentalListsViewModel(rentals, auth, new FakeNavigationService()) { ScopeIndex = 1 };

        await vm.LoadCommand.ExecuteAsync(null);
        vm.ScopeIndex = 0;

        await Task.Delay(700);

        Assert.Empty(vm.Rentals);
    }

    [Fact]
    public async Task LoadAsync_repository_fault_surfaces_HasError_message()
    {
        var rentals = new FakeRentalRepository { GetOutgoingFault = new InvalidOperationException("db exploded") };
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 2, Email = "o@test.com", FirstName = "O", LastName = "Z" }
        };
        var vm = new RentalListsViewModel(rentals, auth, new FakeNavigationService()) { ScopeIndex = 0 };

        await vm.LoadCommand.ExecuteAsync(null);

        Assert.True(vm.HasError);
        Assert.Contains("db exploded", vm.ErrorMessage);
    }

    [Fact]
    public async Task OpenRentalDetailAsync_navigates_with_id()
    {
        // Arrange
        var nav = new FakeNavigationService();
        var vm = new RentalListsViewModel(new FakeRentalRepository(), new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 1, Email = "a@b.c", FirstName = "A", LastName = "B" }
        }, nav);

        // Act
        await vm.OpenRentalDetailCommand.ExecuteAsync(new Rental { Id = 42 });

        // Assert
        Assert.Single(nav.Navigations);
        Assert.Contains("rentalId=42", nav.Navigations[0].Route, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task OpenRentalDetailAsync_null_rental_does_not_navigate()
    {
        var nav = new FakeNavigationService();
        var vm = new RentalListsViewModel(new FakeRentalRepository(), new FakeAuthenticationService { CurrentUser = new User() },
            nav);

        await vm.OpenRentalDetailCommand.ExecuteAsync(null);

        Assert.Empty(nav.Navigations);
    }
}
