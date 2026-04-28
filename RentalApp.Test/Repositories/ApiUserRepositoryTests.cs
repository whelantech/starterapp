using System.Net;
using System.Text;
using RentalApp.Test.Helpers;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Repositories;

public sealed class ApiUserRepositoryTests
{
    [Fact]
    public async Task GetCurrentUserAsync_WhenSuccess_ReturnsUser()
    {
        // Arrange
        const string json =
            """{"id":1,"email":"a@b.c","firstName":"A","lastName":"B","averageRating":null,"itemsListed":null,"rentalsCompleted":null,"createdAt":"2020-01-01T00:00:00Z","updatedAt":"2020-01-01T00:00:00Z","deletedAt":"2020-01-01T00:00:00Z","isActive":true}""";
        var handler = new FakeHttpMessageHandler((req, _) =>
        {
            Assert.EndsWith("/users/me", req.RequestUri?.ToString() ?? "", StringComparison.Ordinal);
            return Task.FromResult(FakeHttpMessageHandler.OkJson(json));
        });
        var client = new HttpClient(handler) { BaseAddress = new Uri("https://api.test/") };
        var repo = new ApiUserRepository(client);

        // Act
        var user = await repo.GetCurrentUserAsync();

        // Assert
        Assert.Equal(1, user?.Id);
        Assert.Equal("a@b.c", user?.Email);
    }

    [Fact]
    public async Task GetCurrentUserAsync_WhenUnauthorized_Throws()
    {
        // Arrange
        var handler = new FakeHttpMessageHandler((_, _) =>
            Task.FromResult(new HttpResponseMessage(HttpStatusCode.Unauthorized)));
        var client = new HttpClient(handler) { BaseAddress = new Uri("https://api.test/") };
        var repo = new ApiUserRepository(client);

        // Act & Assert
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => repo.GetCurrentUserAsync());
    }
}
