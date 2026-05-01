using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Test.Fakes;

namespace StarterApp.Test.Unit;

/// <summary>
/// Exercises <see cref="ApiItemRepository"/> with <see cref="ApiTestService"/> so we validate mapping and validation
/// without network I/O — the test service stands in for <see cref="StarterApp.Database.Api.IApiService"/>.
/// </summary>
public sealed class ApiItemRepositoryTests
{
    [Fact]
    public async Task CreateItemAsync_with_valid_Item_maps_CreateItem_response_to_domain_entity()
    {
        // Arrange: fresh in-memory API + sut; input matches what the REST repository would POST (shape built inside repository).
        var testApi = new ApiTestService();
        var sut = new ApiItemRepository(testApi);
        var input = new Item
        {
            Title = "Cordless Drill API Test",
            Description = "Portable",
            DailyRate = 15,
            CategoryId = 1,
            OwnerName = "",
            IsAvailable = true
        };

        // Act
        var created = await sut.CreateItemAsync(input);

        // Why we care: proves title/rate/category round-trip via PostItemAsync DTO mapping (no HTTP flake surface).
        Assert.True(created.Id > 0);
        Assert.Equal("Cordless Drill API Test", created.Title);
        Assert.Equal(15, created.DailyRate);
        Assert.Equal(1, created.CategoryId);
        Assert.NotNull(created.Category);
        Assert.Equal("Electronics", created.Category!.Name);
    }

    [Fact]
    public async Task GetAllItemsAsync_returns_seed_page_and_reflects_inventory_totals()
    {
        var testApi = new ApiTestService();
        var sut = new ApiItemRepository(testApi);

        // Act: defaults page/size should include both seeded Electronics items from the ApiTestService constructor.
        var page = await sut.GetAllItemsAsync(categoryId: null, search: null, page: 1, pageSize: 10);

        // Assert: paging metadata matches in-memory inventory counts.
        Assert.Equal(2, page.Items.Count);
        Assert.True(page.TotalItems >= 2);
        Assert.Equal(1, page.Page);
    }

    [Fact]
    public async Task GetAllItemsAsync_category_filter_limits_to_matching_slug_inventory()
    {
        var testApi = new ApiTestService();
        var sut = new ApiItemRepository(testApi);

        // Act / Assert: Electronics slug resolves to seeded items; Tools catalogue entry has zero matching rows here.
        var electronics = await sut.GetAllItemsAsync(categoryId: 1);
        Assert.Equal(2, electronics.Items.Count);
        Assert.All(electronics.Items, i => Assert.Equal(1, i.CategoryId));

        var emptyTools = await sut.GetAllItemsAsync(categoryId: 2);
        Assert.Empty(emptyTools.Items);
    }

    [Fact]
    public async Task GetAllItemsAsync_search_string_applied_on_title_case_insensitive()
    {
        var testApi = new ApiTestService();
        var sut = new ApiItemRepository(testApi);

        // Act
        var found = await sut.GetAllItemsAsync(search: "hammer");

        // Assert
        Assert.Single(found.Items);
        Assert.Contains("Hammer", found.Items[0].Title, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task CreateItemAsync_requires_non_empty_title()
    {
        var sut = new ApiItemRepository(new ApiTestService());
        var bad = new Item { Title = "   ", DailyRate = 10, CategoryId = 1 };

        // Act / Assert: repository guards before invoking IApiService.
        await Assert.ThrowsAsync<ArgumentException>(() => sut.CreateItemAsync(bad));
    }

    [Fact]
    public async Task CreateItemAsync_requires_positive_category_and_rate()
    {
        var sut = new ApiItemRepository(new ApiTestService());

        await Assert.ThrowsAsync<ArgumentException>(() =>
            sut.CreateItemAsync(new Item { Title = "X", DailyRate = 10, CategoryId = null }));

        await Assert.ThrowsAsync<ArgumentException>(() =>
            sut.CreateItemAsync(new Item { Title = "X", DailyRate = -1, CategoryId = 1 }));
    }

    [Fact]
    public async Task GetItemByIdAsync_miss_returns_null()
    {
        var sut = new ApiItemRepository(new ApiTestService());
        Assert.Null(await sut.GetItemByIdAsync(id: int.MaxValue));
    }
}
