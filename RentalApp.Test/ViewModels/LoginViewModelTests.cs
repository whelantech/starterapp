using Moq;
using StarterApp.Services;
using StarterApp.ViewModels;

namespace RentalApp.Test.ViewModels;

public sealed class LoginViewModelTests
{
    [Fact]
    public async Task LoginAsync_WhenSuccess_NavigatesToMain()
    {
        // Arrange
        var auth = new Mock<IAuthenticationService>();
        auth.Setup(a => a.LoginAsync("u@test", "p"))
            .ReturnsAsync(new AuthenticationResult(true, "ok"));
        var nav = new Mock<INavigationService>();
        var ui = new Mock<IUiDialogs>();
        var vm = new LoginViewModel(auth.Object, nav.Object, ui.Object)
        {
            Email = "u@test",
            Password = "p"
        };

        // Act
        await vm.LoginCommand.ExecuteAsync(null);

        // Assert
        nav.Verify(n => n.NavigateToAsync("MainPage"), Times.Once);
    }

    [Fact]
    public async Task LoginAsync_WhenFailure_SetsError()
    {
        // Arrange
        var auth = new Mock<IAuthenticationService>();
        auth.Setup(a => a.LoginAsync(It.IsAny<string>(), It.IsAny<string>()))
            .ReturnsAsync(new AuthenticationResult(false, "bad"));
        var nav = new Mock<INavigationService>();
        var ui = new Mock<IUiDialogs>();
        var vm = new LoginViewModel(auth.Object, nav.Object, ui.Object)
        {
            Email = "u@test",
            Password = "p"
        };

        // Act
        await vm.LoginCommand.ExecuteAsync(null);

        // Assert
        nav.Verify(n => n.NavigateToAsync(It.IsAny<string>()), Times.Never);
        Assert.True(vm.HasError);
    }
}
