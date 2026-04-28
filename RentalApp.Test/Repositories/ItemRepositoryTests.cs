using RentalApp.Test.Fixtures;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Repositories;

public sealed class ItemRepositoryTests
{
    [Fact]
    public async Task GetAllItemsAsync_WhenCategoryIdSet_FiltersByCategory()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var repo = fixture.CreateItemRepository();
        var item = new Item
        {
            Title = "FilterTest",
            Description = "d",
            DailyRate = 1,
            CategoryId = 1,
            OwnerName = "o",
            IsAvailable = true
        };
        fixture.Context.Items.Add(item);
        await fixture.Context.SaveChangesAsync();

        // Act
        var result = await repo.GetAllItemsAsync(categoryId: 1);

        // Assert
        Assert.Contains(result.Items, i => i.Title == "FilterTest");
    }

    [Fact]
    public async Task GetItemByIdAsync_WhenExists_ReturnsItem()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var item = new Item
        {
            Title = "ById",
            Description = "d",
            DailyRate = 2,
            CategoryId = 1,
            OwnerName = "Owner",
            IsAvailable = true
        };
        fixture.Context.Items.Add(item);
        await fixture.Context.SaveChangesAsync();
        var repo = fixture.CreateItemRepository();

        // Act
        var found = await repo.GetItemByIdAsync(item.Id);

        // Assert
        Assert.NotNull(found);
        Assert.Equal("ById", found!.Title);
    }

    [Fact]
    public async Task CreateItemAsync_PersistsItem()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var repo = fixture.CreateItemRepository();
        var item = new Item
        {
            Title = "New",
            Description = "desc",
            DailyRate = 5,
            CategoryId = 1,
            OwnerName = "Me",
            IsAvailable = true
        };

        // Act
        var created = await repo.CreateItemAsync(item);

        // Assert
        Assert.True(created.Id > 0);
        var again = await repo.GetItemByIdAsync(created.Id);
        Assert.Equal("New", again?.Title);
    }

    [Fact]
    public async Task UpdateItemAsync_UpdatesFields()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var repo = fixture.CreateItemRepository();
        var created = await repo.CreateItemAsync(new Item
        {
            Title = "T1",
            Description = "d",
            DailyRate = 1,
            CategoryId = 1,
            OwnerName = "O",
            IsAvailable = true
        });
        created.Title = "T2";

        // Act
        var updated = await repo.UpdateItemAsync(created);

        // Assert
        Assert.NotNull(updated);
        Assert.Equal("T2", updated!.Title);
    }

    [Fact]
    public async Task DeleteItemAsync_WhenFound_ReturnsTrue()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var repo = fixture.CreateItemRepository();
        var created = await repo.CreateItemAsync(new Item
        {
            Title = "Del",
            Description = "d",
            DailyRate = 1,
            CategoryId = 1,
            OwnerName = "O",
            IsAvailable = true
        });

        // Act
        var ok = await repo.DeleteItemAsync(created.Id);

        // Assert
        Assert.True(ok);
        Assert.Null(await repo.GetItemByIdAsync(created.Id));
    }
}
