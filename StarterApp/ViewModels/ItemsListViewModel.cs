using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;

namespace StarterApp.ViewModels;

/// <summary>
/// ViewModel for displaying list of all items
/// </summary>
public partial class ItemsListViewModel : BaseViewModel
{
    private readonly AppDbContext _context;

    /// <summary>
    /// Observable collection of items (auto-updates UI when changed)
    /// </summary>
    [ObservableProperty] private ObservableCollection<Item> items = new();

    /// <summary>
    /// All categories for filter picker
    /// </summary>
    [ObservableProperty] private List<Category> categories = new();

    /// <summary>
    /// Currently selected category filter (null = show all)
    /// </summary>
    [ObservableProperty] private Category? selectedCategory;

    /// <summary>
    /// Whether we're refreshing the list
    /// </summary>
    [ObservableProperty] private bool isRefreshing;

    public ItemsListViewModel(AppDbContext context)
    {
        _context = context;
        Title = "My Items";
    }

    /// <summary>
    /// Load categories and items
    /// </summary>
    public async Task InitializeAsync()
    {
        await LoadCategoriesAsync();
        await LoadItemsAsync();
    }

    /// <summary>
    /// Load all categories
    /// </summary>
    private async Task LoadCategoriesAsync()
    {
        try
        {
            var allCategories = await _context.Categories
                .OrderBy(c => c.Name)
                .ToListAsync();

            // Add "All" option at the beginning
            Categories = new List<Category>
            {
                new Category { Id = 0, Name = "All Categories" }
            };

            Categories.AddRange(allCategories);
        }
        catch (Exception ex)
        {
            SetError($"Failed to load categories: {ex.Message}");
        }
    }

    /// <summary>
    /// Load items (filtered by category if selected)
    /// </summary>
    [RelayCommand]
    private async Task LoadItemsAsync()
    {
        try
        {
            IsBusy = true;
            ClearError();

            IQueryable<Item> query = _context.Items
                .Include(i => i.Category);

            // Apply category filter if selected
            if (SelectedCategory != null && SelectedCategory.Id > 0)
            {
                query = query.Where(i => i.CategoryId == SelectedCategory.Id);
            }

            // Order by most recent first
            var itemsList = await query
                .OrderByDescending(i => i.CreatedAt)
                .ToListAsync();

            Items.Clear();

            foreach (var item in itemsList)
            {
                Items.Add(item);
            }
        }
        catch (Exception ex)
        {
            SetError($"Failed to load items: {ex.Message}");
        }
        finally
        {
            IsBusy = false;
            IsRefreshing = false;
        }
    }

    /// <summary>
    /// Navigate to create new item
    /// </summary>
    [RelayCommand]
    private async Task AddItemAsync()
    {
        await Shell.Current.GoToAsync("createitem");
    }

    /// <summary>
    /// Navigate to edit existing item
    /// </summary>
    /// <param name="item">The item to edit</param>
    [RelayCommand]
    private async Task EditItemAsync(Item item)
    {
        if (item == null) return;

        await Shell.Current.GoToAsync($"createitem?id={item.Id}");
    }

    /// <summary>
    /// Delete an item with confirmation
    /// </summary>
    [RelayCommand]
    private async Task DeleteItemAsync(Item item)
    {
        if (item == null) return;

        bool confirm = await Application.Current.MainPage.DisplayAlert(
            "Delete Item",
            $"Are you sure you want to delete '{item.Title}'?",
            "Delete",
            "Cancel");

        if (!confirm) return;

        try
        {
            IsBusy = true;

            _context.Items.Remove(item);
            await _context.SaveChangesAsync();

            Items.Remove(item);
        }
        catch (Exception ex)
        {
            SetError($"Failed to delete item: {ex.Message}");
        }
        finally
        {
            IsBusy = false;
        }
    }

    /// <summary>
    /// Refresh the items list (pull-to-refresh)
    /// </summary>
    [RelayCommand]
    private async Task RefreshAsync()
    {
        IsRefreshing = true;
        await LoadItemsAsync();
    }

    /// <summary>
    /// Called when category filter changes
    /// </summary>
    partial void OnSelectedCategoryChanged(Category? value)
    {
        // Automatically reload items when category filter changes
        _ = LoadItemsAsync();
    }
}