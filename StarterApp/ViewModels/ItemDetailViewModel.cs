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
    private readonly IRentalService _rentalService;
    private readonly INavigationService _navigationService;

    [ObservableProperty]
    [NotifyPropertyChangedFor(nameof(AvailabilityDisplay))]
    [NotifyPropertyChangedFor(nameof(AverageRatingDisplay))]
    private Item? item;

    /// <summary>True when the signed-in user is the listing owner (edit is allowed).</summary>
    [ObservableProperty] private bool canEdit;

    /// <summary>Show Rent when the user may request a rental (not owner, available, signed in).</summary>
    [ObservableProperty] private bool canRent;

    /// <summary>Pull-to-refresh on the details page (reload from API/DB).</summary>
    [ObservableProperty] private bool isRefreshing;

    private int? _currentItemId;

    public string AvailabilityDisplay =>
        Item?.IsAvailable == true ? "Available" : "Not available";

    public string? AverageRatingDisplay =>
        Item?.AverageRating is { } r ? $"{r} / 5" : null;

    /// <summary>Category badge visibility (avoid nested Item.Category.* bindings that can fault when Category is null).</summary>
    public bool HasCategory => Item?.Category is not null;

    public string CategoryBadgeColor => Item?.Category?.ColorHex ?? "#808080";

    public string? CategoryName => Item?.Category?.Name;

    public ItemDetailViewModel(
        IItemRepository repository,
        IAuthenticationService authService,
        IRentalService rentalService,
        INavigationService navigationService)
    {
        _repository = repository;
        _authService = authService;
        _rentalService = rentalService;
        _navigationService = navigationService;
        Title = "Item details";
    }

    /// <summary>
    /// Parses Shell query <c>id</c> and loads the item (keeps error handling inside the VM).
    /// </summary>
    public Task ApplyQueryIdAsync(string? rawId)
    {
        if (string.IsNullOrWhiteSpace(rawId) || !int.TryParse(rawId.Trim(), out var id) || id <= 0)
        {
            _currentItemId = null;
            Item = null;
            CanEdit = false;
            CanRent = false;
            SetError("Invalid item id.");
            return Task.CompletedTask;
        }

        return LoadAsync(id);
    }

    /// <summary>
    /// Load item by id from the repository (local DB or API).
    /// </summary>
    /// <param name="isRefresh">When true, skip the full-screen busy overlay (pull-to-refresh only).</param>
    public async Task LoadAsync(int itemId, bool isRefresh = false)
    {
        _currentItemId = itemId;
        try
        {
            if (!isRefresh)
                IsBusy = true;
            ClearError();

            var loaded = await _repository.GetItemByIdAsync(itemId);
            if (loaded == null)
            {
                Item = null;
                CanEdit = false;
                CanRent = false;
                SetError("Item not found.");
                return;
            }

            Item = loaded;
            Title = loaded.Title;
            CanEdit = IsCurrentUserOwner(loaded);
            UpdateCanRent(loaded);
        }
        catch (Exception ex)
        {
            Item = null;
            CanEdit = false;
            CanRent = false;
            SetError($"Could not load item: {ex.Message}");
        }
        finally
        {
            if (!isRefresh)
                IsBusy = false;
        }
    }

    /// <summary>
    /// Reload the current item (e.g. after editing on another page).
    /// </summary>
    [RelayCommand]
    private async Task RefreshAsync()
    {
        if (!_currentItemId.HasValue || _currentItemId.Value <= 0)
        {
            IsRefreshing = false;
            return;
        }

        var id = _currentItemId.Value;
        try
        {
            IsRefreshing = true;
            await LoadAsync(id, isRefresh: true);
        }
        finally
        {
            IsRefreshing = false;
        }
    }

    private bool IsCurrentUserOwner(Item loaded)
    {
        var userId = _authService.CurrentUser?.Id;
        if (userId is null || loaded.OwnerId is null)
            return false;

        return loaded.OwnerId.Value == userId.Value;
    }

    private void UpdateCanRent(Item loaded)
    {
        CanRent = _rentalService.CanOfferRent(loaded, _authService.CurrentUser?.Id);
    }

    partial void OnItemChanged(Item? value)
    {
        OnPropertyChanged(nameof(HasCategory));
        OnPropertyChanged(nameof(CategoryBadgeColor));
        OnPropertyChanged(nameof(CategoryName));
        EditCommand.NotifyCanExecuteChanged();
        RentCommand.NotifyCanExecuteChanged();
    }

    partial void OnCanEditChanged(bool value)
    {
        EditCommand.NotifyCanExecuteChanged();
    }

    partial void OnCanRentChanged(bool value)
    {
        RentCommand.NotifyCanExecuteChanged();
    }

    private bool CanExecuteEdit() => Item is not null && CanEdit;

    [RelayCommand(CanExecute = nameof(CanExecuteEdit))]
    private async Task EditAsync()
    {
        if (Item == null || !CanEdit)
            return;

        await Shell.Current.GoToAsync($"{nameof(CreateItemPage)}?id={Item.Id}");
    }

    private bool CanExecuteRent() => Item is not null && CanRent;

    [RelayCommand(CanExecute = nameof(CanExecuteRent))]
    private async Task RentAsync()
    {
        if (Item == null || !CanRent)
            return;

        await _navigationService.NavigateToAsync($"{nameof(RentalRequestPage)}?itemId={Item.Id}");
    }
}
