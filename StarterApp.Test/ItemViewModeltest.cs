using StarterApp.Database.Models;
using StarterApp.Test.Fixtures;
using Xunit;

namespace StarterApp.Test;

[Collection("Postgres")]
public class ItemViewModelTests
{
    private readonly TestPostgresFixture _fixture;

    public ItemViewModelTests(TestPostgresFixture fixture) => _fixture = fixture;

    [Fact]
    public async Task Save_Newitem_ShouldCreateDatabaseRecord()
    {
        var repo = _fixture.CreateItemRepository();
        var item = new Item
        {
            Title = "I am a test item",
            Description = "I am a test description",
            DailyRate = 100,
            CategoryId = 1,
            IsAvailable = true,
            OwnerId = 1,
            OwnerName = "John Doe",
        };

        var saved = await repo.CreateItemAsync(item);
        try
        {
            Assert.True(saved.Id > 0);
            var loaded = await repo.GetItemByIdAsync(saved.Id);
            Assert.NotNull(loaded);
            Assert.Equal("I am a test item", loaded!.Title);
        }
        finally
        {
            await repo.DeleteItemAsync(saved.Id);
        }
    }
}
