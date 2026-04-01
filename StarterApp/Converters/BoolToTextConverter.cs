using System.Globalization;

namespace StarterApp.Converters;

/// <summary>
/// Converts bool to one of two strings. <see cref="IValueConverter.Convert"/> parameter format: <c>trueText|falseText</c> (e.g. <c>Update|Create</c>).
/// </summary>
public class BoolToTextConverter : IValueConverter
{
    public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is not bool b)
            return string.Empty;

        var param = parameter?.ToString() ?? "True|False";
        var parts = param.Split('|', 2, StringSplitOptions.TrimEntries);
        if (parts.Length >= 2)
            return b ? parts[0] : parts[1];

        return b ? "True" : "False";
    }

    public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture) =>
        throw new NotSupportedException();
}
