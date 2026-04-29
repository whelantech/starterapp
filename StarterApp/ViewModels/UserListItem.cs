namespace StarterApp.ViewModels;

/// <summary>
/// Row model for user list items in <see cref="T:StarterApp.Views.UserListPage"/> (compiled bindings / CollectionView).
/// </summary>
public sealed class UserListItem
{
    public string FullName { get; init; } = string.Empty;
    public string Email { get; init; } = string.Empty;
    public string RolesDisplay { get; init; } = string.Empty;
    public DateTime? CreatedAt { get; init; }
}
