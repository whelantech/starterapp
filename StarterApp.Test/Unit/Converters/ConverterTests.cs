using System.Globalization;
using StarterApp.Converters;
using StarterApp.Database.Workflow;

namespace StarterApp.Test.Unit.Converters;

public sealed class ConverterTests
{
    private static readonly CultureInfo En = CultureInfo.InvariantCulture;

    [Theory]
    [InlineData(true, false)]
    [InlineData(false, true)]
    public void InvertedBoolConverter_round_trips(bool input, bool expectedConvert)
    {
        var c = new InvertedBoolConverter();
        Assert.Equal(expectedConvert, c.Convert(input, typeof(bool), null, En));
        Assert.Equal(input, c.ConvertBack(expectedConvert, typeof(bool), null, En));
    }

    [Fact]
    public void InvertedBoolConverter_non_bool_returns_false()
    {
        var c = new InvertedBoolConverter();
        Assert.False((bool)c.Convert("x", typeof(bool), null, En));
    }

    [Theory]
    [InlineData(true, "On|Off", "On")]
    [InlineData(false, "On|Off", "Off")]
    [InlineData(true, "onlyone", "True")]
    public void BoolToTextConverter_respects_parameter(bool b, string param, string expected)
    {
        var c = new BoolToTextConverter();
        Assert.Equal(expected, c.Convert(b, typeof(string), param, En));
    }

    [Fact]
    public void BoolToTextConverter_non_bool_returns_empty()
    {
        var c = new BoolToTextConverter();
        Assert.Equal(string.Empty, c.Convert(3, typeof(string), null, En));
    }

    [Fact]
    public void StringToBoolConverter_empty_is_false()
    {
        var c = new StringToBoolConverter();
        Assert.False((bool)c.Convert("", typeof(bool), null, En));
        Assert.False((bool)c.Convert("   ", typeof(bool), null, En));
        Assert.True((bool)c.Convert("a", typeof(bool), null, En));
    }

    [Fact]
    public void IsNotNullConverter()
    {
        var c = new IsNotNullConverter();
        Assert.False((bool)c.Convert(null, typeof(bool), null, En)!);
        Assert.True((bool)c.Convert(new object(), typeof(bool), null, En)!);
    }

    [Theory]
    [InlineData(null, "")]
    [InlineData("", "")]
    [InlineData("pending", "Requested")]
    [InlineData("Requested", "Requested")]
    [InlineData("Out for Rent", "Out for rent")]
    public void RentalStatusDisplayConverter_Formats(string? raw, string expected)
    {
        Assert.Equal(expected, RentalStatusDisplayConverter.FormatForDisplay(raw));
    }

    [Fact]
    public void RentalStatusDisplayConverter_IValueConverter_uses_FormatForDisplay()
    {
        var c = new RentalStatusDisplayConverter();
        Assert.Equal("Approved", c.Convert(RentalStatusValues.Approved, typeof(string), null, En));
    }
}
