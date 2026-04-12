using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;

namespace StarterApp.ViewModels;

public partial class RentalRequestViewModel : BaseViewModel
{
    private readonly IItemRepository _itemRepository;
    private readonly IRentalRepository _rentalRepository;
    private readonly IAuthenticationService _authService;
    private readonly INavigationService _navigationService;
    private readonly IRentalService _rentalService;
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
        IRentalService rentalService)
    {
        _itemRepository = itemRepository;
        _rentalRepository = rentalRepository;
        _authService = authService;
        _navigationService = navigationService;
        _rentalService = rentalService;
        _commentsPersistLocally = itemRepository is ItemRepository;
        ShowCommentsPersistHint = !_commentsPersistLocally;
        Title = "Request rental";
    }

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

            await _rentalRepository.CreateRequestAsync(
                _itemId.Value,
                user.Id,
                start,
                end,
                commentsToPersist);

            await Application.Current!.MainPage!.DisplayAlert(
                "Rental requested",
                "Your rental request was submitted.",
                "OK");

            await _navigationService.NavigateBackAsync();
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
