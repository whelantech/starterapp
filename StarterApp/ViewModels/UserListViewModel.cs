using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;

namespace StarterApp.ViewModels;

/// <summary>
/// ViewModel for displaying the current logged-in user's profile.
/// Data is fetched from the API (/users/me).
/// </summary>
public partial class UserListViewModel : ObservableObject
{
    private readonly ApiUserRepository _userRepository;

    public UserListViewModel(ApiUserRepository userRepository)
    {
        _userRepository = userRepository;
    }

    // ==================== STATE ====================

    [ObservableProperty]
    private bool isLoading;

    [ObservableProperty]
    private string errorMessage = string.Empty;

    [ObservableProperty]
    private User? currentUser;

    // ==================== COMMAND ====================

    [RelayCommand]
    private async Task LoadUserAsync()
    {
        if (IsLoading)
            return;

        try
        {
            IsLoading = true;
            ErrorMessage = string.Empty;

            var user = await _userRepository.GetCurrentUserAsync();

            if (user == null)
            {
                ErrorMessage = "Unable to load user profile.";
                return;
            }

            CurrentUser = user;
        }
        catch (UnauthorizedAccessException)
        {
            ErrorMessage = "You are not logged in.";
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to load profile: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }
}