using RentalApp.Test.Fixtures;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Repositories;

public sealed class EfRepositoryTests
{
    [Fact]
    public async Task AddAsync_PersistsEntity()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var repo = fixture.CreateCategoryEfRepository();
        var cat = new Category
        {
            Id = 9,
            Name = "EfTestCategoryUnique",
            ColorHex = "#000000"
        };

        // Act
        var added = await repo.AddAsync(cat);

        // Assert
        Assert.Equal(9, added.Id);
        var roundTrip = await repo.GetByIdAsync(9);
        Assert.Equal("EfTestCategoryUnique", roundTrip?.Name);
    }

    [Fact]
    public async Task RemoveAsync_WhenExists_ReturnsTrue()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var repo = fixture.CreateCategoryEfRepository();
        await repo.AddAsync(new Category
        {
            Id = 10,
            Name = "ToRemoveEf",
            ColorHex = "#000001"
        });

        // Act
        var removed = await repo.RemoveAsync(10);

        // Assert
        Assert.True(removed);
        Assert.Null(await repo.GetByIdAsync(10));
    }

    [Fact]
    public async Task ExistsAsync_WhenNotPresent_ReturnsFalse()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var repo = fixture.CreateCategoryEfRepository();

        // Act
        var exists = await repo.ExistsAsync(9999);

        // Assert
        Assert.False(exists);
    }
}
