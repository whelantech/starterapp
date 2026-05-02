using StarterApp.Database.Models;
using StarterApp.Database.Workflow;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class RentalDetailViewModelTests
{
    [Fact]
    public async Task LoadAsync_without_user_sets_error()
    {
        var vm = new RentalDetailViewModel(new FakeRentalRepository(), new FakeAuthenticationService(),
            new FakeNavigationService(), new RentalWorkflowPolicy());

        await vm.LoadAsync(1);

        Assert.True(vm.HasError);
        Assert.Null(vm.Rental);
    }

    [Fact]
    public async Task LoadAsync_populates_rental_when_found()
    {
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 3, Email = "v@test.com", FirstName = "V", LastName = "U" }
        };
        var rentals = new FakeRentalRepository();
        rentals.Rentals.Add(new Rental
        {
            Id = 9,
            ItemId = 1,
            ItemTitle = "Canoe",
            BorrowerUserId = 3,
            OwnerId = 8,
            StartDate = new DateOnly(2026, 4, 1),
            EndDate = new DateOnly(2026, 4, 5),
            Status = RentalStatusValues.Requested,
            TotalPrice = 120,
            CreatedAt = DateTime.UtcNow
        });

        var vm = new RentalDetailViewModel(rentals, auth, new FakeNavigationService(), new RentalWorkflowPolicy());

        await vm.LoadAsync(9);

        Assert.False(vm.HasError);
        Assert.NotNull(vm.Rental);
        Assert.Equal("Canoe", vm.Rental!.ItemTitle);
    }

    [Fact]
    public void ShowOwnerActions_true_for_owner_on_requested_rental()
    {
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 8, Email = "o@test.com", FirstName = "O", LastName = "W" }
        };
        var rentals = new FakeRentalRepository();
        var vm = new RentalDetailViewModel(rentals, auth, new FakeNavigationService(), new RentalWorkflowPolicy())
        {
            Rental = new Rental
            {
                Id = 1,
                ItemId = 1,
                BorrowerUserId = 3,
                OwnerId = 8,
                StartDate = DateOnly.Parse("2026-01-10"),
                EndDate = DateOnly.Parse("2026-01-12"),
                Status = RentalStatusValues.Requested,
                TotalPrice = 10
            }
        };

        Assert.True(vm.ShowOwnerActions);
    }

    [Fact]
    public async Task ApproveAsync_navigates_back_on_success()
    {
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 8, Email = "o@test.com", FirstName = "O", LastName = "W" }
        };
        var rentals = new FakeRentalRepository();
        rentals.Rentals.Add(new Rental
        {
            Id = 5,
            ItemId = 1,
            BorrowerUserId = 3,
            OwnerId = 8,
            StartDate = DateOnly.Parse("2026-01-01"),
            EndDate = DateOnly.Parse("2026-01-02"),
            Status = RentalStatusValues.Requested,
            TotalPrice = 5,
            CreatedAt = DateTime.UtcNow
        });

        var nav = new FakeNavigationService();
        var vm = new RentalDetailViewModel(rentals, auth, nav, new RentalWorkflowPolicy());
        await vm.LoadAsync(5);

        await vm.ApproveCommand.ExecuteAsync(null);

        Assert.False(vm.HasError);
        Assert.Equal(1, nav.NavigateBackCount);
    }

    [Fact]
    public async Task ApplyQueryRentalIdAsync_invalid_sets_error()
    {
        var vm = new RentalDetailViewModel(new FakeRentalRepository(), new FakeAuthenticationService(),
            new FakeNavigationService(), new RentalWorkflowPolicy());

        await vm.ApplyQueryRentalIdAsync("no");

        Assert.True(vm.HasError);
        Assert.Null(vm.Rental);
    }

    [Fact]
    public async Task RefreshAsync_without_loaded_id_completes_quietly()
    {
        var vm = new RentalDetailViewModel(new FakeRentalRepository(), new FakeAuthenticationService(),
            new FakeNavigationService(), new RentalWorkflowPolicy());

        await vm.RefreshCommand.ExecuteAsync(null);

        Assert.False(vm.IsRefreshing);
    }

    [Fact]
    public async Task ApproveAsync_when_actor_is_not_owner_sets_policy_error()
    {
        var auth = new FakeAuthenticationService
        {
            CurrentUser = new User { Id = 3, Email = "b@test.com", FirstName = "B", LastName = "R" }
        };
        var rentals = new FakeRentalRepository();
        rentals.Rentals.Add(new Rental
        {
            Id = 5,
            ItemId = 1,
            BorrowerUserId = 3,
            OwnerId = 8,
            StartDate = DateOnly.Parse("2026-01-01"),
            EndDate = DateOnly.Parse("2026-01-02"),
            Status = RentalStatusValues.Requested,
            TotalPrice = 5,
            CreatedAt = DateTime.UtcNow
        });

        var vm = new RentalDetailViewModel(rentals, auth, new FakeNavigationService(), new RentalWorkflowPolicy());
        await vm.LoadAsync(5);

        await vm.ApproveCommand.ExecuteAsync(null);

        Assert.True(vm.HasError);
    }
}
