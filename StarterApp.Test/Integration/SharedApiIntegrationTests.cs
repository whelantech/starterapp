using StarterApp.Database.Api;

namespace StarterApp.Test.Integration;

/// <summary>
/// End-to-end calls against hosted SET09102 API (real TLS + JSON). Locally these no-op unless
/// <c>SET09102_RUN_API_INTEGRATION=true</c> so <c>dotnet test</c> stays offline-friendly.
/// </summary>
public sealed class SharedApiIntegrationTests : IAsyncLifetime
{
    private HttpClient _httpClient = null!;
    private IApiService _api = null!;
    private bool _ready;
    private string _registeredEmail = "";

    public async Task InitializeAsync()
    {
        if (!SharedApiIntegrationFixture.ShouldRun)
            return;

        var baseUri = SharedApiIntegrationFixture.ResolveBaseUri();
        _httpClient = SharedApiIntegrationFixture.CreateHttpClient(baseUri);
        _api = new ApiService(_httpClient);

        _registeredEmail =
            await SharedApiIntegrationFixture
                .RegisterUniqueUserAndAttachBearerAsync(_httpClient, _api)
                .ConfigureAwait(false);
        _ready = true;
    }

    public Task DisposeAsync()
    {
        _httpClient?.Dispose();
        return Task.CompletedTask;
    }

    [Fact]
    public async Task GetUsersMe_reflects_registered_identity()
    {
        if (!_ready)
            return;

        // Act: Bearer already attached by fixture — mirrors coursework login flow assertions.
        var (status, me, rawErr) = await _api.GetUsersMeAsync();

        // Assert profile matches seeded registration mailbox.
        Assert.Equal(System.Net.HttpStatusCode.OK, status);
        Assert.NotNull(me);
        Assert.Null(rawErr);
        Assert.Equal(_registeredEmail, me!.Email);
    }

    [Fact]
    public async Task Post_item_round_trips_via_categories_shape()
    {
        if (!_ready)
            return;

        // Arrange: discover a permitted category identifier from hosted API catalogue.
        var categories = await _api.GetCategoriesAsync();
        Assert.NotNull(categories);
        Assert.NotEmpty(categories!.Categories);
        var categoryId = categories.Categories[0].Id;

        var body = new
        {
            title = $"API integration item {Guid.NewGuid():N}",
            description = "Created by StarterApp integration test",
            dailyRate = 7.50m,
            categoryId,
            latitude = 55.9533,
            longitude = -3.1883
        };

        var (postStatus, created, error) = await _api.PostItemAsync(body);

        // Act / Assert coursework-style parity: CREATED semantics with concrete identity.
        Assert.True((int)postStatus is >= 200 and <= 299, error ?? $"{(int)postStatus}");
        Assert.NotNull(created);
        Assert.True(created!.Id > 0);
        Assert.Equal(body.title, created.Title);

        var (detailStatus, fetched) = await _api.GetItemByIdAsync(created.Id);

        Assert.Equal(System.Net.HttpStatusCode.OK, detailStatus);
        Assert.NotNull(fetched);
        Assert.Equal(created.Title, fetched!.Title);
    }
}
