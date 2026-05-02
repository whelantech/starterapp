using StarterApp.Database.Api;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Database.Workflow;
using StarterApp.Test.Fakes;

namespace StarterApp.Test.Unit.Repositories;

public sealed class ApiRentalRepositoryTests
{
    private static ApiRentalRepository CreateSut(ApiTestService api) =>
        new(api, new RentalWorkflowPolicy());

    [Fact]
    public async Task CreateRequestAsync_maps_wire_rental_to_domain()
    {
        var api = new ApiTestService();
        await api.EnsureSignedInAsync(new RegisterApiRequest("B", "One", "br1@test.local", "pw1"));
        var sut = CreateSut(api);

        var rental = await sut.CreateRequestAsync(100, 0, new DateOnly(2026, 8, 1), new DateOnly(2026, 8, 3), null);

        Assert.True(rental.Id > 0);
        Assert.Equal(100, rental.ItemId);
        Assert.Equal(RentalStatusValues.Requested, RentalStatusNormalizer.Normalize(rental.Status));
    }

    [Fact]
    public async Task CreateRequestAsync_when_end_before_start_throws()
    {
        var api = new ApiTestService();
        await api.EnsureSignedInAsync(new RegisterApiRequest("B", "Two", "br2@test.local", "pw2"));
        var sut = CreateSut(api);

        await Assert.ThrowsAsync<ArgumentException>(() =>
            sut.CreateRequestAsync(100, 1, new DateOnly(2026, 8, 5), new DateOnly(2026, 8, 1), null));
    }

    [Fact]
    public async Task CreateRequestAsync_when_item_unknown_throws()
    {
        var api = new ApiTestService();
        await api.EnsureSignedInAsync(new RegisterApiRequest("B", "Three", "br3@test.local", "pw3"));
        var sut = CreateSut(api);

        await Assert.ThrowsAsync<InvalidOperationException>(() =>
            sut.CreateRequestAsync(int.MaxValue, 1, new DateOnly(2026, 8, 1), new DateOnly(2026, 8, 2), null));
    }

    [Fact]
    public async Task GetRentalsList_when_not_authenticated_throws_UnauthorizedAccessException()
    {
        var sut = CreateSut(new ApiTestService());
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => sut.GetIncomingAsync(1));
    }

    [Fact]
    public async Task GetIncoming_and_GetOutgoing_split_by_role()
    {
        var api = new ApiTestService();
        var itemRepo = new ApiItemRepository(api);
        var rentalRepo = CreateSut(api);

        await api.EnsureSignedInAsync(new RegisterApiRequest("O", "Owner", "own_flow@test.local", "pwO"));
        var item = await itemRepo.CreateItemAsync(new Item
        {
            Title = "Rental flow item",
            Description = "D",
            DailyRate = 7,
            CategoryId = 1,
            OwnerName = "",
            IsAvailable = true
        });

        await api.EnsureSignedInAsync(new RegisterApiRequest("R", "Borrow", "bor_flow@test.local", "pwB"));
        await rentalRepo.CreateRequestAsync(item.Id, 0, new DateOnly(2026, 10, 1), new DateOnly(2026, 10, 2), null);

        await api.PostAuthTokenAsync("own_flow@test.local", "pwO");
        var incoming = await rentalRepo.GetIncomingAsync(0);
        Assert.Single(incoming);

        await api.PostAuthTokenAsync("bor_flow@test.local", "pwB");
        var outgoing = await rentalRepo.GetOutgoingAsync(0);
        Assert.Single(outgoing);
    }

    [Fact]
    public async Task TransitionAsync_owner_Approve_updates_store()
    {
        var api = new ApiTestService();
        var itemRepo = new ApiItemRepository(api);
        var rentalRepo = CreateSut(api);

        await api.EnsureSignedInAsync(new RegisterApiRequest("O", "Own", "own_tr@test.local", "pw"));
        var createdItem = await itemRepo.CreateItemAsync(new Item
        {
            Title = "T",
            Description = "D",
            DailyRate = 5,
            CategoryId = 1,
            OwnerName = "",
            IsAvailable = true
        });

        await api.EnsureSignedInAsync(new RegisterApiRequest("B", "Bo", "bor_tr@test.local", "pw"));
        var rental = await rentalRepo.CreateRequestAsync(createdItem.Id, 0, new DateOnly(2026, 3, 1),
            new DateOnly(2026, 3, 3), null);

        await api.PostAuthTokenAsync("own_tr@test.local", "pw");
        var userRepo = new ApiUserRepository(api);
        var owner = await userRepo.GetCurrentUserAsync();
        await rentalRepo.TransitionAsync(rental.Id, owner!.Id, RentalTransition.Approve);

        await api.PostAuthTokenAsync("bor_tr@test.local", "pw");
        var reloaded = await rentalRepo.GetByIdAsync(rental.Id, 0);
        Assert.NotNull(reloaded);
        Assert.Equal(RentalStatusValues.Approved, RentalStatusNormalizer.Normalize(reloaded!.Status));
    }
}
