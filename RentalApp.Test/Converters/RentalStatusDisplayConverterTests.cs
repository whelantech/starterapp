using StarterApp.Database.Models;
using StarterApp.Converters;

namespace RentalApp.Test.Converters;

public sealed class RentalStatusDisplayConverterTests
{
    [Theory]
    [InlineData(RentalStatuses.Pending, "Requested")]
    [InlineData(RentalStatuses.Approved, "Approved")]
    [InlineData("canceled", "Cancelled")]
    [InlineData("", "")]
    public void FormatForDisplay_MapsOrPassthrough(string? input, string expected)
    {
        // Act
        var s = RentalStatusDisplayConverter.FormatForDisplay(input);

        // Assert
        Assert.Equal(expected, s);
    }
}
