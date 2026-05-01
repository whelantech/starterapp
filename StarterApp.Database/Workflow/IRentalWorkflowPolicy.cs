using StarterApp.Database.Models;

namespace StarterApp.Database.Workflow;

/// <summary>Centralizes rental state transitions (roles, dates) and API PATCH status literals.</summary>
public interface IRentalWorkflowPolicy
{
    bool IsRemoteApiMode { get; }

    string NormalizeStatus(string? status);

    bool IsRequestedLike(string? status);

    bool IsApprovedLike(string? status);

    bool IsOutForRentOrOverdue(string? status);

    bool IsReturnedLike(string? status);

    /// <summary>Whether the borrower may withdraw a pending request (local DB only for this codebase).</summary>
    bool BorrowerCanWithdrawPendingRequest { get; }

    (bool Allowed, string? Reason) CanTransition(
        Rental rental,
        int actingUserId,
        RentalTransition transition,
        DateOnly todayUtc);

    /// <summary>Exact <c>status</c> value for <c>PATCH /rentals/{id}/status</c>, or null when not applicable (e.g. cancel on API).</summary>
    string? GetApiPatchStatus(RentalTransition transition);
}
