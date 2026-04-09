using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;
using StarterApp.Views;

namespace StarterApp.ViewModels;

/// <summary>
/// Read-only view model for a single item (title, description, rate, category, owner, etc.).
/// </summary>
public partial class ItemDetailViewModel : BaseViewModel
{
    private readonly IItemRepository _repository;
    private readonly IAuthenticationService _authService;

    [ObservableProperty]
    [NotifyPropertyChangedFor(nameof(AvailabilityDisplay))]
    [NotifyPropertyChangedFor(nameof(AverageRatingDisplay))]
    private Item? item;

    /// <summary>True when the signed-in user is the listing owner (edit is allowed).</summary>
    [ObservableProperty] private bool canEdit;

    public string AvailabilityDisplay =>
        Item?.IsAvailable == true ? "Available" : "Not available";

    public string? AverageRatingDisplay =>
        Item?.AverageRating is { } r ? $"{r} / 5" : null;

    /// <summary>Category badge visibility (avoid nested Item.Category.* bindings that can fault when Category is null).</summary>
    public bool HasCategory => Item?.Category is not null;

    public string CategoryBadgeColor => Item?.Category?.ColorHex ?? "#808080";

    public string? CategoryName => Item?.Category?.Name;

    public ItemDetailViewModel(IItemRepository repository, IAuthenticationService authService)
    {
        _repository = repository;
        _authService = authService;
        Title = "Item details";
    }

    /// <summary>
    /// Parses Shell query <c>id</c> and loads the item (keeps error handling inside the VM).
    /// </summary>
    public Task ApplyQueryIdAsync(string? rawId)
    {
        if (string.IsNullOrWhiteSpace(rawId) || !int.TryParse(rawId.Trim(), out var id) || id <= 0)
        {
            Item = null;
            CanEdit = false;
            SetError("Invalid item id.");
            return Task.CompletedTask;
        }

        return LoadAsync(id);
    }

    /// <summary>
    /// Load item by id from the repository (local DB or API).
    /// </summary>
    public async Task LoadAsync(int itemId)
    {
        try
        {
            IsBusy = true;
            ClearError();

            var loaded = await _repository.GetItemByIdAsync(itemId);
            if (loaded == null)
            {
                Item = null;
                CanEdit = false;
                SetError("Item not found.");
                return;
            }

            Item = loaded;
            Title = loaded.Title;
            CanEdit = IsCurrentUserOwner(loaded);
        }
        catch (Exception ex)
        {
            Item = null;
            CanEdit = false;
            SetError($"Could not load item: {ex.Message}");
        }
        finally
        {
            IsBusy = false;
        }
    }

    private bool IsCurrentUserOwner(Item loaded)
    {
        var userId = _authService.CurrentUser?.Id;
        if (userId is null || loaded.OwnerId is null)
            return false;

        return loaded.OwnerId.Value == userId.Value;
    }

    partial void OnItemChanged(Item? value)
    {
        OnPropertyChanged(nameof(HasCategory));
        OnPropertyChanged(nameof(CategoryBadgeColor));
        OnPropertyChanged(nameof(CategoryName));
        EditCommand.NotifyCanExecuteChanged();
    }

    partial void OnCanEditChanged(bool value)
    {
        EditCommand.NotifyCanExecuteChanged();
    }

    private bool CanExecuteEdit() => Item is not null && CanEdit;

    [RelayCommand(CanExecute = nameof(CanExecuteEdit))]
    private async Task EditAsync()
    {
        if (Item == null || !CanEdit)
            return;

        await Shell.Current.GoToAsync($"{nameof(CreateItemPage)}?id={Item.Id}");
    }
}
