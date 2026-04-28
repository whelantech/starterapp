using RentalApp.Test.Fixtures;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Services;

namespace RentalApp.Test.Services;

public sealed class AuthenticationServiceTests
{
    [Fact]
    public async Task RegisterAsync_ThenLoginAsync_Succeeds()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var svc = new AuthenticationService(fixture.Context);
        const string email = "auth.test@local.dev";

        // Act
        var reg = await svc.RegisterAsync("A", "B", email, "Secret12!");
        Assert.True(reg.IsSuccess);
        var login = await svc.LoginAsync(email, "Secret12!");

        // Assert
        Assert.True(login.IsSuccess);
        Assert.True(svc.IsAuthenticated);
    }

    [Fact]
    public async Task LoginAsync_WhenPasswordWrong_Fails()
    {
        // Arrange
        using var fixture = new DatabaseFixture();
        var svc = new AuthenticationService(fixture.Context);
        await svc.RegisterAsync("A", "B", "wrong.pw@local", "Right1!");
        var login = await svc.LoginAsync("wrong.pw@local", "Nope1!");

        // Assert
        Assert.False(login.IsSuccess);
    }
}
