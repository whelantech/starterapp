using System.Net;
using RentalApp.Test.Helpers;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Repositories;

public sealed class ApiItemRepositoryTests
{
    [Fact]
    public async Task GetAllItemsAsync_WhenSuccess_MapsItems()
    {
        // Arrange
        const string json =
            """{"items":[{"id":1,"title":"A","description":null,"dailyRate":5,"categoryId":1,"category":"c","ownerId":2,"ownerName":"O", "ownerRating":null,"isAvailable":true,"averageRating":null,"imageUrl":null,"createdAt":"2026-01-01T00:00:00Z"}],"totalItems":1,"page":1,"pageSize":20,"totalPages":1}""";
        var handler = new FakeHttpMessageHandler((req, _) =>
        {
            Assert.Contains("items", req.RequestUri?.AbsolutePath, StringComparison.Ordinal);
            return Task.FromResult(FakeHttpMessageHandler.OkJson(json));
        });
        var client = new HttpClient(handler) { BaseAddress = new Uri("https://api.test/") };
        var repo = new ApiItemRepository(client);

        // Act
        var result = await repo.GetAllItemsAsync();

        // Assert
        Assert.Single(result.Items);
        Assert.Equal("A", result.Items[0].Title);
    }

    [Fact]
    public async Task GetAllCategoriesAsync_WhenWrapperNull_ReturnsEmpty()
    {
        // Arrange
        var handler = new FakeHttpMessageHandler((req, _) =>
        {
            Assert.Equal("/categories", req.RequestUri?.AbsolutePath);
            return Task.FromResult(FakeHttpMessageHandler.OkJson("null"));
        });
        var client = new HttpClient(handler) { BaseAddress = new Uri("https://api.test/") };
        var repo = new ApiItemRepository(client);

        // Act
        var cats = await repo.GetAllCategoriesAsync();

        // Assert
        Assert.Empty(cats);
    }
}
