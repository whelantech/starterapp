using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace RentalApp.Test.Data;

public sealed class RentalTransitionParserTests
{
    [Theory]
    [InlineData("Approved", RentalTransition.Approve)]
    [InlineData("rejected", RentalTransition.Reject)]
    [InlineData("OutForRent", RentalTransition.StartRental)]
    [InlineData("canceled", RentalTransition.Cancel)]
    public void FromNewStatusString_ParsesKnownStatuses(string s, RentalTransition expected)
    {
        // Act
        var t = RentalTransitionParser.FromNewStatusString(s);

        // Assert
        Assert.Equal(expected, t);
    }

    [Fact]
    public void FromNewStatusString_WhenUnknown_Throws()
    {
        // Act & Assert
        Assert.Throws<InvalidOperationException>(() => RentalTransitionParser.FromNewStatusString("???"));
    }
}
