using Moq;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;
using StarterApp.ViewModels;

namespace RentalApp.Test.ViewModels;

public sealed class ItemsListViewModelTests
{
    [Fact]
    public async Task InitializeAsync_LoadsCategoriesAndItems()
    {
        // Arrange
        var repo = new Mock<IItemRepository>();
        repo.Setup(r => r.GetAllCategoriesAsync())
            .ReturnsAsync(new List<Category> { new() { Id = 1, Name = "C", ColorHex = "#fff" } });
        repo.Setup(r => r.GetAllItemsAsync(It.IsAny<int?>(), It.IsAny<string?>(), It.IsAny<int>(), It.IsAny<int>()))
            .ReturnsAsync(new ItemQueryResult { Items = new List<Item>() });
        var shell = new Mock<IShellNavigation>();
        var ui = new Mock<IUiDialogs>();
        var vm = new ItemsListViewModel(repo.Object, shell.Object, ui.Object);

        // Act
        await vm.InitializeAsync();

        // Assert
        Assert.NotEmpty(vm.Categories);
        repo.Verify(r => r.GetAllCategoriesAsync(), Times.Once);
    }

    [Fact]
    public async Task DeleteItemCommand_WhenConfirmed_Deletes()
    {
        // Arrange
        var item = new Item
        {
            Id = 7,
            Title = "T",
            Description = "d",
            DailyRate = 1,
            OwnerName = "o",
            IsAvailable = true
        };
        var repo = new Mock<IItemRepository>();
        repo.Setup(r => r.DeleteItemAsync(7)).ReturnsAsync(true);
        var shell = new Mock<IShellNavigation>();
        var ui = new Mock<IUiDialogs>();
        ui.Setup(u => u.DisplayConfirmAsync(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>()))
            .ReturnsAsync(true);
        var vm = new ItemsListViewModel(repo.Object, shell.Object, ui.Object);
        vm.Items.Add(item);

        // Act
        await vm.DeleteItemCommand.ExecuteAsync(item);

        // Assert
        Assert.DoesNotContain(item, vm.Items);
        repo.Verify(r => r.DeleteItemAsync(7), Times.Once);
    }
}
