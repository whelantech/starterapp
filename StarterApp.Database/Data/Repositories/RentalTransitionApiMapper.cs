using StarterApp.Database.Models;
using StarterApp.Database.Workflow;

namespace StarterApp.Database.Repositories;

/// <summary>Maps transitions to PATCH body status strings for the shared API.</summary>
public static class RentalTransitionApiMapper
{
    /// <inheritdoc cref="IRentalWorkflowPolicy.GetApiPatchStatus"/>
    public static string ToApiStatus(IRentalWorkflowPolicy policy, RentalTransition transition)
    {
        var s = policy.GetApiPatchStatus(transition);
        if (s is null)
        {
            throw new InvalidOperationException(
                $"Transition {transition} cannot be expressed as an API status update.");
        }

        return s;
    }
}
