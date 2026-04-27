using System.Globalization;
using StarterApp.Database.Models;

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
        if (status.Equals(RentalStatuses.Pending, StringComparison.OrdinalIgnoreCase))
            return "Requested";
        if (status.Equals(RentalStatuses.Approved, StringComparison.OrdinalIgnoreCase))
            return "Approved";
        if (status.Equals(RentalStatuses.Rejected, StringComparison.OrdinalIgnoreCase))
            return "Rejected";
        if (status.Equals(RentalStatuses.OutForRent, StringComparison.OrdinalIgnoreCase))
            return "Out for rent";
        if (status.Equals(RentalStatuses.Returned, StringComparison.OrdinalIgnoreCase))
            return "Returned";
        if (status.Equals(RentalStatuses.Completed, StringComparison.OrdinalIgnoreCase))
            return "Completed";
        if (status.Equals(RentalStatuses.Cancelled, StringComparison.OrdinalIgnoreCase) ||
            status.Equals("canceled", StringComparison.OrdinalIgnoreCase))
            return "Cancelled";
        return status.Trim();
    }
}
