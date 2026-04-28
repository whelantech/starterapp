namespace RentalApp.Test.Fixtures;

/// <summary>Verifies the test project and product references build together.</summary>
public sealed class SmokeTests
{
    [Fact]
    public void Test_project_references_StarterApp()
    {
        // Arrange
        const int expected = 2;

        // Act
        var actual = 1 + 1;

        // Assert
        Assert.Equal(expected, actual);
    }
}
