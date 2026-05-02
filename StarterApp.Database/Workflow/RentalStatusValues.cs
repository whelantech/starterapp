namespace StarterApp.Database.Workflow;

/// <summary>Standard rental status strings aligned with the shared SET09102 API wire format.</summary>
public static class RentalStatusValues
{
    public const string Requested = "Requested";
    public const string Approved = "Approved";
    public const string Rejected = "Rejected";
    public const string OutForRent = "Out for Rent";
    public const string Overdue = "Overdue";
    public const string Returned = "Returned";
    public const string Completed = "Completed";

    /// <summary>Legacy local-only status for rows withdrawn before this workflow dropped borrower cancel.</summary>
    public const string Cancelled = "Cancelled";
}
