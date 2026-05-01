using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;
using StarterApp.Views;

namespace StarterApp.ViewModels;

/// <summary>
/// Form flow for requesting a rental: loads item and borrower context, validates dates, and calls <see cref="IRentalRepository.CreateRequestAsync"/>.
/// </summary>
public partial class RentalRequestViewModel : BaseViewModel
{
    private readonly IItemRepository _itemRepository;
    private readonly IRentalRepository _rentalRepository;
    private readonly IAuthenticationService _authService;
    private readonly INavigationService _navigationService;
    private readonly IRentalService _rentalService;
    private readonly IUiDialogs _uiDialogs;
    private readonly bool _commentsPersistLocally;

    private int? _itemId;
    private Item? _item;

    [ObservableProperty] private string borrowerDisplayName = string.Empty;

    [ObservableProperty] private string borrowerEmail = string.Empty;

    [ObservableProperty] private string itemTitle = string.Empty;

    [ObservableProperty] private int dailyRate;

    [ObservableProperty]
    [NotifyPropertyChangedFor(nameof(TotalPriceFormatted))]
    private int computedTotalPrice;

    [ObservableProperty] private string comments = string.Empty;

    [ObservableProperty] private DateTime startDate = DateTime.Today;

    [ObservableProperty] private DateTime endDate = DateTime.Today.AddDays(1);

    [ObservableProperty] private bool showCommentsPersistHint;

    public string TotalPriceFormatted => $"£{ComputedTotalPrice}";

    /// <summary>Earliest selectable start date (today).</summary>
    [ObservableProperty]
    private DateTime minimumStartDate = DateTime.Today;

    public RentalRequestViewModel(
        IItemRepository itemRepository,
        IRentalRepository rentalRepository,
        IAuthenticationService authService,
        INavigationService navigationService,
        IRentalService rentalService,
        IUiDialogs uiDialogs)
    {
        _itemRepository = itemRepository;
        _rentalRepository = rentalRepository;
        _authService = authService;
        _navigationService = navigationService;
        _rentalService = rentalService;
        _uiDialogs = uiDialogs;
        _commentsPersistLocally = itemRepository is ItemRepository;
        ShowCommentsPersistHint = !_commentsPersistLocally;
        Title = "Request rental";
    }

    /// <summary>Parses <c>itemId</c> from query navigation and loads the item when valid.</summary>
    public Task ApplyQueryItemIdAsync(string? rawItemId)
    {
        if (string.IsNullOrWhiteSpace(rawItemId) || !int.TryParse(rawItemId.Trim(), out var id) || id <= 0)
        {
            _itemId = null;
            _item = null;
            SetError("Invalid item.");
            return Task.CompletedTask;
        }

        _itemId = id;
        return LoadAsync();
    }

    /// <summary>Loads item and borrower display data and recomputes eligibility and price.</summary>
    private async Task LoadAsync()
    {
        if (!_itemId.HasValue)
            return;

        try
        {
            IsBusy = true;
            ClearError();

            var user = _authService.CurrentUser;
            if (user is null)
            {
                SetError("You must be signed in to rent.");
                return;
            }

            BorrowerDisplayName = user.FullName;
            BorrowerEmail = user.Email;

            var item = await _itemRepository.GetItemByIdAsync(_itemId.Value);
            if (item is null)
            {
                SetError("Item not found.");
                return;
            }

            _item = item;
            ItemTitle = item.Title;
            DailyRate = item.DailyRate;

            if (!_rentalService.CanOfferRent(item, user.Id))
            {
                SetError("You cannot rent this item.");
            }

            RecalculatePrice();
        }
        catch (Exception ex)
        {
            SetError($"Could not load: {ex.Message}");
        }
        finally
        {
            IsBusy = false;
        }
    }

    partial void OnStartDateChanged(DateTime value)
    {
        if (EndDate < StartDate)
            EndDate = StartDate;
        RecalculatePrice();
        OnPropertyChanged(nameof(TotalPriceFormatted));
    }

    partial void OnEndDateChanged(DateTime value)
    {
        if (EndDate < StartDate)
            StartDate = EndDate;
        RecalculatePrice();
        OnPropertyChanged(nameof(TotalPriceFormatted));
    }

    /// <summary>Recalculates estimated total from <see cref="IRentalService.ComputeTotalPrice"/> when dates or item change.</summary>
    private void RecalculatePrice()
    {
        if (_item is null)
        {
            ComputedTotalPrice = 0;
            return;
        }

        var start = DateOnly.FromDateTime(StartDate);
        var end = DateOnly.FromDateTime(EndDate);
        ComputedTotalPrice = _rentalService.ComputeTotalPrice(_item.DailyRate, start, end);
    }

    [RelayCommand]
    private async Task SubmitAsync()
    {
        if (_item is null || _itemId is null)
            return;

        var user = _authService.CurrentUser;
        if (user is null)
        {
            SetError("You must be signed in.");
            return;
        }

        if (!_rentalService.CanOfferRent(_item, user.Id))
        {
            SetError("You cannot rent this item.");
            return;
        }

        var start = DateOnly.FromDateTime(StartDate);
        var end = DateOnly.FromDateTime(EndDate);

        if (end < start)
        {
            SetError("End date must be on or after start date.");
            return;
        }

        try
        {
            IsBusy = true;
            ClearError();

            var commentsToPersist = _commentsPersistLocally ? Comments : null;

            var created = await _rentalRepository.CreateRequestAsync(
                _itemId.Value,
                user.Id,
                start,
                end,
                commentsToPersist);

            await _uiDialogs.DisplayInfoAsync(
                "Rental requested",
                "Your request was sent. You can cancel it on the next screen if you change your mind.",
                "OK");

            await _navigationService.NavigateBackAsync();
            await _navigationService.NavigateToAsync($"{nameof(RentalDetailPage)}?rentalId={created.Id}");
        }
        catch (Exception ex)
        {
            SetError(ex.Message);
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task CancelAsync()
    {
        await _navigationService.NavigateBackAsync();
    }
}
