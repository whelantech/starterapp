using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Views;
using System.Collections.ObjectModel;

namespace StarterApp.ViewModels;

/// <summary>
/// ViewModel for displaying list of all items
/// </summary>
public partial class ItemListViewModel : BaseViewModel
{
    private readonly IItemRepository _repository;

    /// <summary>Skips reload when <see cref="SelectedCategory"/> is set programmatically during category load.</summary>
    private bool _suppressCategoryChanged;

    [ObservableProperty] private ObservableCollection<Item> items = new();

    [ObservableProperty] private List<Category> categories = new();

    /// <summary>Includes synthetic "All categories" row (Id 0).</summary>
    [ObservableProperty] private Category? selectedCategory;

    [ObservableProperty] private bool isRefreshing;

    [ObservableProperty] private int totalItems;

    [ObservableProperty] private int totalPages = 1;

    public ItemListViewModel(IItemRepository repository)
    {
        _repository = repository;
        Title = "Items";
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
    /// Load all categories for filter picker
    /// </summary>
    private async Task LoadCategoriesAsync()
    {
        try
        {
            _suppressCategoryChanged = true;
            var allCategories = await _repository.GetAllCategoriesAsync();

            Categories = new List<Category>
            {
                new Category { Id = 0, Name = "All categories", ColorHex = "#808080" }
            };

            Categories.AddRange(allCategories);
            SelectedCategory = Categories[0];
        }
        catch (Exception ex)
        {
            SetError($"Failed to load categories: {ex.Message}");
        }
        finally
        {
            _suppressCategoryChanged = false;
        }
    }

    /// <summary>
    /// Load items (filtered by category when a specific category is selected)
    /// </summary>
    [RelayCommand]
    private async Task LoadItemsAsync()
    {
        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;

            int? categoryId = SelectedCategory is { Id: > 0 } ? SelectedCategory.Id : null;

            var result = await _repository.GetAllItemsAsync(
                categoryId,
                search: null,
                page: 1,
                pageSize: 100);

            TotalItems = result.TotalItems;
            TotalPages = Math.Max(1, result.TotalPages);

            Items.Clear();
            foreach (var item in result.Items)
            {
                Items.Add(item);
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to load items: {ex.Message}";
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
        await Shell.Current.GoToAsync(nameof(CreateItemPage));
    }

    /// <summary>
    /// Navigate to edit existing item
    /// </summary>
    [RelayCommand]
    private async Task EditItemAsync(Item item)
    {
        if (item == null) return;
        await Shell.Current.GoToAsync($"{nameof(CreateItemPage)}?id={item.Id}");
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

            var deleted = await _repository.DeleteItemAsync(item.Id);

            if (deleted)
            {
                Items.Remove(item);
            }
            else
            {
                ErrorMessage = "Item not found";
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to delete item: {ex.Message}";
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

    partial void OnSelectedCategoryChanged(Category? value)
    {
        if (_suppressCategoryChanged || value is null || Categories.Count == 0)
            return;

        _ = LoadItemsAsync();
    }
}
