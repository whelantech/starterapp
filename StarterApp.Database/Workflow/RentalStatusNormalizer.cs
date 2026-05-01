using StarterApp.Database.Models;

namespace StarterApp.Database.Workflow;

/// <summary>Maps API and legacy local status strings to <see cref="RentalStatusValues"/> values.</summary>
public static class RentalStatusNormalizer
{
    /// <summary>Returns a normalized standard status string for comparisons and workflow logic.</summary>
    public static string Normalize(string? raw)
    {
        if (string.IsNullOrWhiteSpace(raw))
            return RentalStatusValues.Requested;

        var s = raw.Trim();

        if (s.Equals(RentalStatuses.Pending, StringComparison.OrdinalIgnoreCase) ||
            s.Equals(RentalStatusValues.Requested, StringComparison.OrdinalIgnoreCase))
            return RentalStatusValues.Requested;

        if (s.Equals(RentalStatusValues.Approved, StringComparison.OrdinalIgnoreCase))
            return RentalStatusValues.Approved;

        if (s.Equals(RentalStatusValues.Rejected, StringComparison.OrdinalIgnoreCase))
            return RentalStatusValues.Rejected;

        if (s.Equals(RentalStatuses.OutForRent, StringComparison.OrdinalIgnoreCase) ||
            s.Equals("OutForRent", StringComparison.OrdinalIgnoreCase) ||
            s.Equals(RentalStatusValues.OutForRent, StringComparison.OrdinalIgnoreCase))
            return RentalStatusValues.OutForRent;

        if (s.Equals(RentalStatusValues.Overdue, StringComparison.OrdinalIgnoreCase))
            return RentalStatusValues.Overdue;

        if (s.Equals(RentalStatusValues.Returned, StringComparison.OrdinalIgnoreCase))
            return RentalStatusValues.Returned;

        if (s.Equals(RentalStatusValues.Completed, StringComparison.OrdinalIgnoreCase))
            return RentalStatusValues.Completed;

        if (s.Equals(RentalStatusValues.Cancelled, StringComparison.OrdinalIgnoreCase) ||
            s.Equals("Canceled", StringComparison.OrdinalIgnoreCase))
            return RentalStatusValues.Cancelled;

        return s;
    }

    /// <summary>Statuses that block overlapping rental periods (matches prior local DB semantics, standard + legacy spellings).</summary>
    public static bool IsOverlapBlocking(string? status)
    {
        var n = Normalize(status);
        return n is RentalStatusValues.Requested
            or RentalStatusValues.Approved
            or RentalStatusValues.OutForRent
            or RentalStatusValues.Overdue
            or RentalStatusValues.Returned;
    }
}
