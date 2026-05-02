using System.Net;
using StarterApp.Database.Api;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class UserListViewModelTests
{
    [Fact]
    public async Task LoadUserAsync_success_sets_CurrentUser()
    {
        // Arrange
        var api = new ApiTestService();
        await api.EnsureSignedInAsync(new RegisterApiRequest("Ann", "Lee", "ann_list@test.local", "Secret1!"));
        var repo = new ApiUserRepository(api);
        var vm = new UserListViewModel(repo);

        // Act
        await vm.LoadUserCommand.ExecuteAsync(null);

        // Assert
        Assert.NotNull(vm.CurrentUser);
        Assert.Equal("ann_list@test.local", vm.CurrentUser!.Email);
        Assert.Empty(vm.ErrorMessage);
        Assert.False(vm.IsLoading);
    }

    [Fact]
    public async Task LoadUserAsync_without_session_sets_not_logged_in_error()
    {
        // Arrange
        var vm = new UserListViewModel(new ApiUserRepository(new ApiTestService()));

        // Act
        await vm.LoadUserCommand.ExecuteAsync(null);

        // Assert
        Assert.Null(vm.CurrentUser);
        Assert.Contains("not logged in", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task LoadUserAsync_when_api_reports_error_sets_message_prefix()
    {
        // Arrange
        var vm = new UserListViewModel(new ApiUserRepository(new BrokenProfileUsersMeApi()));

        // Act
        await vm.LoadUserCommand.ExecuteAsync(null);

        // Assert
        Assert.Contains("Failed to load profile", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task LoadUserAsync_while_already_loading_returns_early_so_single_load_completes()
    {
        // Arrange
        var api = new ApiTestService { GetUsersMeDelayMilliseconds = 350 };
        await api.EnsureSignedInAsync(new RegisterApiRequest("Bob", "X", "bob_list@test.local", "Secret1!"));
        var vm = new UserListViewModel(new ApiUserRepository(api));

        var firstStarted = vm.LoadUserCommand.ExecuteAsync(null);
        await Task.Delay(30);

        // Act — should hit IsLoading guard and return immediately
        await vm.LoadUserCommand.ExecuteAsync(null);

        await firstStarted;

        // Assert
        Assert.NotNull(vm.CurrentUser);
        Assert.Equal("bob_list@test.local", vm.CurrentUser!.Email);
        Assert.False(vm.IsLoading);
    }

    /// <summary>Same behaviour as ApiUserRepositoryTests broken profile fixture.</summary>
    private sealed class BrokenProfileUsersMeApi : IApiService
    {
        public Task<(HttpStatusCode Status, TokenApiResponse? Token, ApiErrorDto? Error)> PostAuthTokenAsync(string email,
            string password,
            CancellationToken cancellationToken = default) =>
            Task.FromResult((HttpStatusCode.OK, (TokenApiResponse?)null, (ApiErrorDto?)null));

        public Task<(HttpStatusCode Status, ApiErrorDto? Error)> PostAuthRegisterAsync(RegisterApiRequest request,
            CancellationToken cancellationToken = default) =>
            Task.FromResult((HttpStatusCode.Created, (ApiErrorDto?)null));

        public Task<(HttpStatusCode Status, UserMeApiDto? User, string? RawError)> GetUsersMeAsync(
            CancellationToken cancellationToken = default) =>
            Task.FromResult((HttpStatusCode.OK, (UserMeApiDto?)null, (string?)null));

        public Task<ItemsListApiResponse?> GetItemsPagedAsync(string queryString, CancellationToken cancellationToken = default) =>
            throw new NotImplementedException();

        public Task<(HttpStatusCode Status, ItemDetailApiDto? Item)> GetItemByIdAsync(int id,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(HttpStatusCode Status, CreateItemApiResponse? Created, string? Error)> PostItemAsync(object body,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(HttpStatusCode Status, ItemDetailApiDto? Item, string? Error)> PutItemAsync(int id, object body,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<CategoriesApiResponse?> GetCategoriesAsync(CancellationToken cancellationToken = default) =>
            throw new NotImplementedException();

        public Task<(HttpStatusCode Status, RentalCreateApiDto? Rental, string? Error)> PostRentalAsync(object body,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(HttpStatusCode Status, RentalsListApiDto? Wrapper, string? Error)> GetRentalsListAsync(
            string incomingOrOutgoingSegment, string? statusFilter, CancellationToken cancellationToken = default) =>
            throw new NotImplementedException();

        public Task<(HttpStatusCode Status, RentalDetailApiDto? Rental)> GetRentalByIdAsync(int rentalId,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(HttpStatusCode Status, string? Error)> PatchRentalStatusAsync(int rentalId, object body,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();
    }
}
