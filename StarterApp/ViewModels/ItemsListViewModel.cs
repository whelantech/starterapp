using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Views;
using System.Collections.ObjectModel;

namespace StarterApp.ViewModels;

/// <summary>
/// ViewModel for displaying items — uses <see cref="IItemRepository"/> so the same UI works with local PostgreSQL or the shared REST API.
/// </summary>
public partial class ItemsListViewModel : BaseViewModel
{
    private readonly IItemRepository _repository;

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
    [ObservableProperty] private int? selectedCategoryId;

    /// <summary>
    /// Whether we're refreshing the list
    /// </summary>
    [ObservableProperty] private bool isRefreshing;

    public ItemsListViewModel(IItemRepository repository)
    {
        _repository = repository;
        Title = "Marketplace Items";
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
            var allCategories = await _repository.GetAllCategoriesAsync();

            Categories = new List<Category>
            {
                new Category { Id = 0, Name = "All Categories", ColorHex = "#808080" }
            };
            Categories.AddRange(allCategories.OrderBy(c => c.Name));
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

            int? categoryFilter = SelectedCategoryId is > 0 ? SelectedCategoryId : null;
            var result = await _repository.GetAllItemsAsync(
                categoryId: categoryFilter,
                search: null,
                page: 1,
                pageSize: 100);

            Items.Clear();
            foreach (var item in result.Items)
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
        await Shell.Current.GoToAsync("item");
    }

    /// <summary>
    /// Navigate to read-only item details.
    /// </summary>
    [RelayCommand]
    private async Task OpenItemDetailAsync(Item? item)
    {
        if (item == null) return;
        await Shell.Current.GoToAsync($"{nameof(ItemDetailsPage)}?id={item.Id}");
    }

    /// <summary>
    /// Navigate to edit existing item
    /// </summary>
    [RelayCommand]
    private async Task EditItemAsync(Item item)
    {
        if (item == null) return;
        await Shell.Current.GoToAsync($"item?id={item.Id}");
    }

    /// <summary>
    /// Delete an item with confirmation
    /// </summary>
    [RelayCommand]
    private async Task DeleteItemAsync(Item item)
    {
        if (item == null) return;

        var mainPage = Application.Current?.MainPage;
        if (mainPage is null) return;

        bool confirm = await mainPage.DisplayAlert(
            "Delete Item",
            $"Are you sure you want to delete '{item.Title}'?",
            "Delete",
            "Cancel");

        if (!confirm) return;

        try
        {
            IsBusy = true;
            var ok = await _repository.DeleteItemAsync(item.Id);
            if (ok)
                Items.Remove(item);
            else
                SetError("Could not delete item.");
        }
        catch (NotImplementedException)
        {
            SetError("Delete is not available when using the shared API.");
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
    partial void OnSelectedCategoryIdChanged(int? value)
    {
        _ = LoadItemsAsync();
    }
}
