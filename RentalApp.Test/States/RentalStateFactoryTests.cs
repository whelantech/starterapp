using StarterApp.Database.Models;
using StarterApp.Database.States;

namespace RentalApp.Test.States;

public sealed class RentalStateFactoryTests
{
    [Theory]
    [InlineData("Pending")]
    [InlineData("PENDING")]
    [InlineData(null)]
    public void FromStatus_WhenNullOrPending_ReturnsRequestedState(string? status)
    {
        // Act
        var s = RentalStateFactory.FromStatus(status);

        // Assert
        Assert.IsType<RequestedState>(s);
    }

    [Fact]
    public void FromStatus_WhenUnknown_Throws()
    {
        // Act & Assert
        Assert.Throws<InvalidOperationException>(() => RentalStateFactory.FromStatus("NotARealState"));
    }
}
