using System.Globalization;
using StarterApp.Database.Models;
using StarterApp.Database.Workflow;

namespace StarterApp.Converters;

public sealed class RentalStatusDisplayConverter : IValueConverter
{
    public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture) =>
        FormatForDisplay(value as string);

    public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture) =>
        throw new NotSupportedException();

    public static string FormatForDisplay(string? status)
    {
        if (string.IsNullOrWhiteSpace(status))
            return string.Empty;

        return RentalStatusNormalizer.Normalize(status) switch
        {
            RentalStatusValues.Requested => "Requested",
            RentalStatusValues.Approved => "Approved",
            RentalStatusValues.Rejected => "Rejected",
            RentalStatusValues.OutForRent => "Out for rent",
            RentalStatusValues.Overdue => "Overdue",
            RentalStatusValues.Returned => "Returned",
            RentalStatusValues.Completed => "Completed",
            RentalStatusValues.Cancelled => "Cancelled",
            var other => other.Trim()
        };
    }
}
