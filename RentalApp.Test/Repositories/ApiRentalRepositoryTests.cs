using System.Net;
using System.Text;
using RentalApp.Test.Helpers;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Repositories;

public sealed class ApiRentalRepositoryTests
{
    [Fact]
    public async Task CreateRequestAsync_WhenSuccess_MapsRental()
    {
        // Arrange
        const string body =
            """{"id":3,"itemId":1,"itemTitle":"I","borrowerId":2,"borrowerName":"B","ownerId":1,"ownerName":"O","startDate":"2026-01-10","endDate":"2026-01-12","status":"Pending","totalPrice":30,"createdAt":"2026-01-01T00:00:00Z"}""";
        var handler = new FakeHttpMessageHandler((req, _) =>
        {
            Assert.Equal(HttpMethod.Post, req.Method);
            return Task.FromResult(new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(body, Encoding.UTF8, "application/json")
            });
        });
        var client = new HttpClient(handler) { BaseAddress = new Uri("https://api.test/") };
        var repo = new ApiRentalRepository(client);

        // Act
        var r = await repo.CreateRequestAsync(1, 2, new DateOnly(2026, 1, 10), new DateOnly(2026, 1, 12), "x");

        // Assert
        Assert.Equal(3, r.Id);
        Assert.Equal(1, r.ItemId);
    }

    [Fact]
    public async Task GetIncomingAsync_WhenUnauthorized_Throws()
    {
        // Arrange
        var handler = new FakeHttpMessageHandler((_, _) =>
        {
            return Task.FromResult(new HttpResponseMessage(HttpStatusCode.Unauthorized));
        });
        var client = new HttpClient(handler) { BaseAddress = new Uri("https://api.test/") };
        var repo = new ApiRentalRepository(client);

        // Act & Assert
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => repo.GetIncomingAsync(1));
    }
}
