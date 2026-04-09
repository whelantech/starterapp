using System.Threading;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;

namespace StarterApp.ViewModels;

/// <summary>
/// ViewModel for creating or editing a single Item
/// </summary>
public partial class CreateItemViewModel : BaseViewModel
{
    private readonly IItemRepository _repository;
    private readonly IAuthenticationService _authService;

    /// <summary>
    /// Prevents overlapping InitializeAsync calls (Shell can fire ApplyQueryAttributes and OnAppearing
    /// so close together that two EF operations run on the same DbContext).
    /// </summary>
    private readonly SemaphoreSlim _initLock = new(1, 1);

    private int? _itemId;

    /// <summary>Coordinates from API when editing (PUT must send lat/long).</summary>
    private double? _latitude;

    private double? _longitude;

    [ObservableProperty] private string itemTitle = string.Empty;

    [ObservableProperty] private string description = string.Empty;

    [ObservableProperty] private int dailyRate;

    [ObservableProperty] private List<Category> categories = new();

    [ObservableProperty] private Category? selectedCategory;

    [ObservableProperty] private bool isAvailable = true;

    [ObservableProperty] private string imageUrl = string.Empty;

    [ObservableProperty] private bool isEditMode;

    public CreateItemViewModel(IItemRepository repository, IAuthenticationService authService)
    {
        _repository = repository;
        _authService = authService;
        Title = "Create Item";
    }

    /// <summary>
    /// Load categories and optionally load an existing Item
    /// </summary>
    public async Task InitializeAsync(int? itemId = null)
    {
        await _initLock.WaitAsync();
        try
        {
            IsBusy = true;
            ClearError();

            // ✅ Uses repository (no EF Core here)
            Categories = await _repository.GetAllCategoriesAsync();

            if (itemId.HasValue)
            {
                _itemId = itemId.Value;
                IsEditMode = true;
                Title = "Edit Item";

                var item = await _repository.GetItemByIdAsync(itemId.Value);

                if (item != null)
                {
                    var currentUserId = _authService.CurrentUser?.Id;
                    if (currentUserId is null || item.OwnerId != currentUserId)
                    {
                        await Shell.Current.GoToAsync("..");
                        return;
                    }

                    ItemTitle = item.Title;
                    Description = item.Description;
                    DailyRate = item.DailyRate;
                    IsAvailable = item.IsAvailable;
                    SelectedCategory = Categories.FirstOrDefault(c => c.Id == item.CategoryId);
                    _latitude = item.Latitude;
                    _longitude = item.Longitude;
                }
            }
            else
            {
                _itemId = null;
                _latitude = null;
                _longitude = null;
                IsEditMode = false;
                Title = "New Item";
            }
        }
        catch (Exception ex)
        {
            SetError($"Failed to load: {ex.Message}");
        }
        finally
        {
            IsBusy = false;
            _initLock.Release();
        }
    }

    /// <summary>
    /// Save Item (create or update)
    /// </summary>
    [RelayCommand]
    private async Task SaveAsync()
    {
        if (string.IsNullOrWhiteSpace(ItemTitle))
        {
            ErrorMessage = "Title is required";
            return;
        }

        if (string.IsNullOrWhiteSpace(Description))
        {
            ErrorMessage = "Description is required";
            return;
        }

        if (SelectedCategory is null || SelectedCategory.Id <= 0)
        {
            ErrorMessage = "Please select a category";
            return;
        }

        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;

            if (IsEditMode && _itemId.HasValue)
            {
                var item = new Item
                {
                    Id = _itemId.Value,
                    Title = ItemTitle,
                    Description = Description,
                    DailyRate = DailyRate,
                    CategoryId = SelectedCategory.Id,
                    IsAvailable = IsAvailable,
                    Latitude = _latitude,
                    Longitude = _longitude
                };

                await _repository.UpdateItemAsync(item);
            }
            else
            {
                var item = new Item
                {
                    Title = ItemTitle,
                    Description = Description,
                    DailyRate = DailyRate,
                    CategoryId = SelectedCategory.Id,
                    IsAvailable = IsAvailable,
                    OwnerId = _authService.CurrentUser?.Id,
                    OwnerName = $"{_authService.CurrentUser?.FirstName} {_authService.CurrentUser?.LastName}".Trim()
                };

                await _repository.CreateItemAsync(item);
            }

            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to save: {ex.Message}";
        }
        finally
        {
            IsBusy = false;
        }
    }

    /// <summary>
    /// Delete the current Item
    /// </summary>
    [RelayCommand]
    private async Task DeleteAsync()
    {
        if (!IsEditMode || !_itemId.HasValue)
            return;

        bool confirm = await Application.Current.MainPage.DisplayAlert(
            "Delete Item",
            "Are you sure you want to delete this item?",
            "Delete",
            "Cancel");

        if (!confirm)
            return;

        try
        {
            IsBusy = true;

            var deleted = await _repository.DeleteItemAsync(_itemId.Value);

            if (deleted)
            {
                await Shell.Current.GoToAsync("..");
            }
            else
            {
                ErrorMessage = "Item not found";
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to delete: {ex.Message}";
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task CancelAsync()
    {
        await Shell.Current.GoToAsync("..");
    }
}