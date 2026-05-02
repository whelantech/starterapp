using Microsoft.EntityFrameworkCore;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Test.Fixtures;

namespace StarterApp.Test.Unit.Repositories;

public sealed class ItemRepositoryInMemoryTests
{
    [Fact]
    public async Task CreateItemAsync_persists_and_loads_category_navigation()
    {
        using var fx = new DatabaseFixture();
        var sut = fx.CreateItemRepository();
        var user = await fx.Context.Users.FirstAsync();
        var created = await sut.CreateItemAsync(new Item
        {
            Title = "Hammer",
            Description = "Heavy",
            DailyRate = 12,
            CategoryId = 1,
            OwnerId = user.Id,
            OwnerName = "Own",
            IsAvailable = true
        });

        Assert.True(created.Id > 0);
        Assert.NotNull(created.Category);
        Assert.Equal("Electronics", created.Category!.Name);
    }

    [Fact]
    public async Task GetAllItemsAsync_filters_by_category()
    {
        using var fx = new DatabaseFixture();
        var sut = fx.CreateItemRepository();
        var user = await fx.Context.Users.FirstAsync();
        await sut.CreateItemAsync(new Item
        {
            Title = "A",
            Description = "x",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = user.Id,
            OwnerName = "O",
            IsAvailable = true
        });
        await sut.CreateItemAsync(new Item
        {
            Title = "B",
            Description = "x",
            DailyRate = 1,
            CategoryId = 2,
            OwnerId = user.Id,
            OwnerName = "O",
            IsAvailable = true
        });

        var electronics = await sut.GetAllItemsAsync(categoryId: 1);
        Assert.Single(electronics.Items);
        Assert.Equal("A", electronics.Items[0].Title);
    }

    [Fact]
    public async Task DeleteItemAsync_removes_row()
    {
        using var fx = new DatabaseFixture();
        var sut = fx.CreateItemRepository();
        var user = await fx.Context.Users.FirstAsync();
        var created = await sut.CreateItemAsync(new Item
        {
            Title = "Del",
            Description = "x",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = user.Id,
            OwnerName = "O",
            IsAvailable = true
        });

        Assert.True(await sut.DeleteItemAsync(created.Id));
        Assert.Null(await sut.GetItemByIdAsync(created.Id));
    }
}
