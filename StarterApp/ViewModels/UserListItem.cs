namespace StarterApp.ViewModels;

/// <summary>
/// Row model for <see cref="UserListPage"/> list items (compiled bindings).
/// </summary>
public sealed class UserListItem
{
    public string FullName { get; set; } = string.Empty;

    public string Email { get; set; } = string.Empty;

    public string RolesDisplay { get; set; } = string.Empty;

    public DateTime? CreatedAt { get; set; }
}
