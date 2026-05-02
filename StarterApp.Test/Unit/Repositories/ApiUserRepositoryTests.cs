using StarterApp.Database.Api;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Database.Workflow;
using StarterApp.Test.Fakes;

namespace StarterApp.Test.Unit.Repositories;

public sealed class ApiUserRepositoryTests
{
    [Fact]
    public async Task GetCurrentUserAsync_without_login_throws()
    {
        var sut = new ApiUserRepository(new ApiTestService());
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => sut.GetCurrentUserAsync());
    }

    [Fact]
    public async Task GetCurrentUserAsync_after_EnsureSignedIn_returns_profile()
    {
        var api = new ApiTestService();
        var reg = new RegisterApiRequest("Sam", "User", "sam_u1@test.local", "Secret1!");
        await api.EnsureSignedInAsync(reg);
        var sut = new ApiUserRepository(api);

        var user = await sut.GetCurrentUserAsync();

        Assert.NotNull(user);
        Assert.Equal(reg.Email.Trim(), user!.Email);
        Assert.Equal(reg.FirstName, user.FirstName);
    }

    [Fact]
    public async Task GetCurrentUserAsync_on_api_error_throws_InvalidOperationException()
    {
        var api = new BrokenProfileApiService();
        var sut = new ApiUserRepository(api);
        await Assert.ThrowsAsync<InvalidOperationException>(() => sut.GetCurrentUserAsync());
    }

    /// <summary>Returns OK with null user and no raw error — repository should treat as failure.</summary>
    private sealed class BrokenProfileApiService : IApiService
    {
        public Task<(System.Net.HttpStatusCode Status, TokenApiResponse? Token, ApiErrorDto? Error)> PostAuthTokenAsync(
            string email, string password, CancellationToken cancellationToken = default) =>
            Task.FromResult((System.Net.HttpStatusCode.OK, (TokenApiResponse?)null, (ApiErrorDto?)null));

        public Task<(System.Net.HttpStatusCode Status, ApiErrorDto? Error)> PostAuthRegisterAsync(
            RegisterApiRequest request, CancellationToken cancellationToken = default) =>
            Task.FromResult((System.Net.HttpStatusCode.Created, (ApiErrorDto?)null));

        public Task<(System.Net.HttpStatusCode Status, UserMeApiDto? User, string? RawError)> GetUsersMeAsync(
            CancellationToken cancellationToken = default) =>
            Task.FromResult((System.Net.HttpStatusCode.OK, (UserMeApiDto?)null, (string?)null));

        public Task<ItemsListApiResponse?> GetItemsPagedAsync(string queryString,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(System.Net.HttpStatusCode Status, ItemDetailApiDto? Item)> GetItemByIdAsync(int id,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(System.Net.HttpStatusCode Status, CreateItemApiResponse? Created, string? Error)> PostItemAsync(
            object body, CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(System.Net.HttpStatusCode Status, ItemDetailApiDto? Item, string? Error)> PutItemAsync(int id,
            object body, CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<CategoriesApiResponse?> GetCategoriesAsync(CancellationToken cancellationToken = default) =>
            throw new NotImplementedException();

        public Task<(System.Net.HttpStatusCode Status, RentalCreateApiDto? Rental, string? Error)> PostRentalAsync(
            object body, CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(System.Net.HttpStatusCode Status, RentalsListApiDto? Wrapper, string? Error)> GetRentalsListAsync(
            string incomingOrOutgoingSegment, string? statusFilter, CancellationToken cancellationToken = default) =>
            throw new NotImplementedException();

        public Task<(System.Net.HttpStatusCode Status, RentalDetailApiDto? Rental)> GetRentalByIdAsync(int rentalId,
            CancellationToken cancellationToken = default) => throw new NotImplementedException();

        public Task<(System.Net.HttpStatusCode Status, string? Error)> PatchRentalStatusAsync(int rentalId,
            object body, CancellationToken cancellationToken = default) => throw new NotImplementedException();
    }
}
