using StarterApp.Database.Models;
using StarterApp.Database.States;

namespace RentalApp.Test.States;

public sealed class RequestedStateTests
{
    [Fact]
    public async Task Approve_SetsApprovedStatus()
    {
        // Arrange
        var s = new RequestedState();
        var r = new Rental { Status = RentalStatuses.Pending };

        // Act
        var next = await s.Approve(r);

        // Assert
        Assert.IsType<ApprovedState>(next);
        Assert.Equal(RentalStatuses.Approved, r.Status);
    }

    [Fact]
    public async Task StartRental_Throws()
    {
        // Arrange
        var s = new RequestedState();
        var r = new Rental { Status = RentalStatuses.Pending };

        // Act & Assert
        await Assert.ThrowsAsync<InvalidOperationException>(() => s.StartRental(r));
    }
}
