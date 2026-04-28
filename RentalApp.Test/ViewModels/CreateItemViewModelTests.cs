using Moq;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;
using StarterApp.ViewModels;

namespace RentalApp.Test.ViewModels;

public sealed class CreateItemViewModelTests
{
    [Fact]
    public async Task SaveCommand_WhenTitleEmpty_SetsError()
    {
        // Arrange
        var repo = new Mock<IItemRepository>();
        var auth = new Mock<IAuthenticationService>();
        var shell = new Mock<IShellNavigation>();
        var ui = new Mock<IUiDialogs>();
        var vm = new CreateItemViewModel(repo.Object, auth.Object, shell.Object, ui.Object)
        {
            ItemTitle = "   "
        };

        // Act
        await vm.SaveCommand.ExecuteAsync(null);

        // Assert
        Assert.Equal("Title is required", vm.ErrorMessage);
    }

    [Fact]
    public async Task SaveCommand_WhenCreate_Succeeds_CallsCreateAndNavigates()
    {
        // Arrange
        var repo = new Mock<IItemRepository>();
        repo.Setup(r => r.CreateItemAsync(It.IsAny<Item>()))
            .ReturnsAsync((Item i) => { i.Id = 99; return i; });
        var auth = new Mock<IAuthenticationService>();
        auth.SetupGet(a => a.CurrentUser)
            .Returns(new User { Id = 1, FirstName = "A", LastName = "B" });
        var shell = new Mock<IShellNavigation>();
        var ui = new Mock<IUiDialogs>();
        var vm = new CreateItemViewModel(repo.Object, auth.Object, shell.Object, ui.Object)
        {
            ItemTitle = "T",
            Description = "D",
            DailyRate = 3,
            SelectedCategory = new Category { Id = 1, Name = "Cat", ColorHex = "#000" }
        };

        // Act
        await vm.SaveCommand.ExecuteAsync(null);

        // Assert
        repo.Verify(r => r.CreateItemAsync(It.IsAny<Item>()), Times.Once);
        shell.Verify(s => s.GoToAsync(".."), Times.Once);
    }
}
