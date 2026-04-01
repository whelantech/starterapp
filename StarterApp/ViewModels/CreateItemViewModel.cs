using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Services;
using Microsoft.EntityFrameworkCore;

namespace StarterApp.ViewModels;

/// <summary>
/// ViewModel for creating or editing a single Item
/// </summary>
public partial class CreateItemViewModel : BaseViewModel
{
    private readonly AppDbContext _context;
    private readonly IAuthenticationService _authService;
    private int? _ItemId;  // Null for new Item, populated for existing Item

    /// <summary>
    /// Item title (page title uses <see cref="BaseViewModel.Title"/>)
    /// </summary>
    [ObservableProperty]
    private string itemTitle = string.Empty;

    /// <summary>
    /// Item Description
    /// </summary>
    [ObservableProperty]
    private string description = string.Empty;

    /// <summary>
    /// Item Daily Rate
    /// </summary>
    [ObservableProperty]
    private int dailyRate;

    /// <summary>
    /// All categories for picker
    /// </summary>
    [ObservableProperty]
    private List<Category> categories = new();

    /// <summary>
    /// Selected category (nullable)
    /// </summary>
    [ObservableProperty]
    private Category? selectedCategory;

    // Owners picker — not implemented yet (use current user as owner later)

    /// <summary>
    /// Is the Item Available for rent?
    /// </summary>
    [ObservableProperty]
    private bool isAvailable = true;

    /// <summary>
    /// Item Image
    /// TODO: Implement image upload
    /// </summary>
    [ObservableProperty]
    private string imageUrl = string.Empty;

    /// <summary>
    /// Whether we're editing an existing Item (vs creating new)
    /// </summary>
    [ObservableProperty]
    private bool isEditMode;

    public CreateItemViewModel(AppDbContext context, IAuthenticationService authService)
    {
        _context = context;
        _authService = authService;
        Title = "Create Item";
    }

    /// <summary>
    /// Load categories and optionally load an existing Item
    /// </summary>
    /// <param name="ItemID">If provided, loads existing Item for editing</param>
    public async Task InitializeAsync(int? ItemID = null)
    {
        try
        {
            IsBusy = true;

            // Load all categories for picker
            Categories = await _context.Categories.OrderBy(c => c.Name).ToListAsync();

            if (ItemID.HasValue)
            {
                // Edit mode: Load existing Item
                _ItemId = ItemID.Value;
                IsEditMode = true;
                Title = "Edit Item";

                var Item = await _context.Items.FindAsync(ItemID.Value);
                if (Item != null)
                {
                    ItemTitle = Item.Title;
                    Description = Item.Description;
                    DailyRate = Item.DailyRate;
                    IsAvailable = Item.IsAvailable;
                    SelectedCategory = Categories.FirstOrDefault(c => c.Id == Item.CategoryId);
                }
            }
            else
            {
                // Create mode
                IsEditMode = false;
                Title = "New Item";
                ItemTitle = string.Empty;
            }
        }
        catch (Exception ex)
        {
            SetError($"Failed to load: {ex.Message}");
        }
        finally
        {
            IsBusy = false;
        }
    }

    /// <summary>
    /// Save Item (create new or update existing)
    /// </summary>
    [RelayCommand]
    private async Task SaveAsync()
    {
        if (string.IsNullOrWhiteSpace(ItemTitle))
        {
            SetError("Title is required");
            return;
        }

        if (string.IsNullOrWhiteSpace(Description))
        {
            SetError("Description is required");
            return;
        }

        try
        {
            IsBusy = true;
            ClearError();

            if (IsEditMode && _ItemId.HasValue)
            {
                // Update existing Item
                var Item = await _context.Items.FindAsync(_ItemId.Value);
                if (Item != null)
                {
                    Item.Title = ItemTitle;
                    Item.Description = Description;
                    Item.DailyRate = DailyRate;
                    Item.CategoryId = SelectedCategory?.Id;
                    Item.IsAvailable = IsAvailable;
                }
            }
            else
            {
                // Create new Item
                var now = DateTime.UtcNow;
                var Item = new Item
                {
                    Title = ItemTitle,
                    Description = Description,
                    DailyRate = DailyRate,
                    CategoryId = SelectedCategory?.Id,
                    IsAvailable = IsAvailable,
                    OwnerId = _authService.CurrentUser?.Id,
                    OwnerName = $"{_authService.CurrentUser?.FirstName} {_authService.CurrentUser?.LastName}".Trim(),
                    CreatedAt = DateTime.UtcNow
                };
                _context.Items.Add(Item);
            }

            await _context.SaveChangesAsync();

            // Navigate back to list
            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            SetError($"Failed to save: {ex.Message}");
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
        if (!IsEditMode || !_ItemId.HasValue)
            return;

        bool confirm = await Application.Current.MainPage.DisplayAlert(
            "Delete Item",
            "Are you sure you want to delete this Item?",
            "Delete",
            "Cancel");

        if (!confirm)
            return;

        try
        {
            IsBusy = true;

            var Item = await _context.Items.FindAsync(_ItemId.Value);
            if (Item != null)
            {
                _context.Items.Remove(Item);
                await _context.SaveChangesAsync();
            }

            // Navigate back to list
            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            SetError($"Failed to delete: {ex.Message}");
        }
        finally
        {
            IsBusy = false;
        }
    }

    /// <summary>
    /// Cancel editing and go back
    /// </summary>
    [RelayCommand]
    private async Task CancelAsync()
    {
        await Shell.Current.GoToAsync("..");
    }
}
