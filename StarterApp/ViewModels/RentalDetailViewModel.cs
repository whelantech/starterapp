using System;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Converters;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;

namespace StarterApp.ViewModels;

/// <summary>
/// Detail screen for one rental: load/refresh, derived display properties, and status transitions allowed for owner or borrower.
/// </summary>
public partial class RentalDetailViewModel : BaseViewModel
{
    private readonly IRentalRepository _rentalRepository;
    private readonly IAuthenticationService _authService;
    private readonly INavigationService _navigationService;

    private int? _currentRentalId;

    [ObservableProperty] private Rental? rental;

    [ObservableProperty] private bool isRefreshing;

    public bool HasRental => Rental is not null;

    public bool HasItemDescription => !string.IsNullOrWhiteSpace(Rental?.ItemDescription);

    public bool HasComments => !string.IsNullOrWhiteSpace(Rental?.Comments);

    public bool HasRequestedAt => Rental?.RequestedAt is not null || Rental?.CreatedAt != default;

    public string TotalPriceDisplay => Rental is null ? string.Empty : $"£{Rental.TotalPrice}";

    public string DateRangeDisplay =>
        Rental is null
            ? string.Empty
            : $"{Rental.StartDate:yyyy-MM-dd} → {Rental.EndDate:yyyy-MM-dd}";

    public string StatusDisplayText => Rental is null
        ? string.Empty
        : RentalStatusDisplayConverter.FormatForDisplay(Rental.Status);

    public string? RequestedAtDisplay
    {
        get
        {
            if (Rental is null)
                return null;
            var t = Rental.RequestedAt ?? Rental.CreatedAt;
            return t == default ? null : t.ToString("dd MMM yyyy HH:mm");
        }
    }

    public bool ShowOwnerActions =>
        Rental is not null
        && IsPendingLike(Rental.Status)
        && _authService.CurrentUser?.Id == Rental.OwnerId;

    public bool ShowBorrowerCancel =>
        Rental is not null
        && _authService.CurrentUser?.Id == Rental.BorrowerUserId
        && IsPendingLike(Rental.Status);

    public RentalDetailViewModel(
        IRentalRepository rentalRepository,
        IAuthenticationService authService,
        INavigationService navigationService)
    {
        _rentalRepository = rentalRepository;
        _authService = authService;
        _navigationService = navigationService;
        Title = "Rental details";
    }

    /// <summary>Parses <c>rentalId</c> from the route and triggers a load when valid.</summary>
    public Task ApplyQueryRentalIdAsync(string? rawId)
    {
        if (string.IsNullOrWhiteSpace(rawId) || !int.TryParse(rawId.Trim(), out var id) || id <= 0)
        {
            _currentRentalId = null;
            Rental = null;
            NotifyRentalDerived();
            SetError("Invalid rental id.");
            return Task.CompletedTask;
        }

        return LoadAsync(id);
    }

    /// <summary>Loads the rental if the current user is owner or borrower. When <paramref name="isRefresh"/> is true, avoids toggling the full-page busy overlay.</summary>
    public async Task LoadAsync(int rentalId, bool isRefresh = false)
    {
        _currentRentalId = rentalId;
        try
        {
            if (!isRefresh)
                IsBusy = true;
            ClearError();

            var user = _authService.CurrentUser;
            if (user is null)
            {
                Rental = null;
                NotifyRentalDerived();
                SetError("Sign in to view this rental.");
                return;
            }

            var loaded = await _rentalRepository.GetByIdAsync(rentalId, user.Id);
            if (loaded is null)
            {
                Rental = null;
                NotifyRentalDerived();
                SetError("Rental not found.");
                return;
            }

            Rental = loaded;
            Title = string.IsNullOrWhiteSpace(loaded.ItemTitle) ? "Rental details" : loaded.ItemTitle!;
            NotifyRentalDerived();
        }
        catch (Exception ex)
        {
            Rental = null;
            NotifyRentalDerived();
            SetError($"Could not load rental: {ex.Message}");
        }
        finally
        {
            if (!isRefresh)
                IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task RefreshAsync()
    {
        if (!_currentRentalId.HasValue || _currentRentalId.Value <= 0)
        {
            IsRefreshing = false;
            return;
        }

        var id = _currentRentalId.Value;
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

    [RelayCommand]
    private async Task ApproveAsync()
    {
        await UpdateStatusIfAllowedAsync(
            () => IsOwner() && IsPendingLike(Rental?.Status),
            RentalStatuses.Approved);
    }

    [RelayCommand]
    private async Task RejectAsync()
    {
        await UpdateStatusIfAllowedAsync(
            () => IsOwner() && IsPendingLike(Rental?.Status),
            RentalStatuses.Rejected);
    }

    [RelayCommand]
    private async Task CancelAsBorrowerAsync()
    {
        await UpdateStatusIfAllowedAsync(
            () => IsBorrower() && IsPendingLike(Rental?.Status),
            RentalStatuses.Cancelled);
    }

    private bool IsOwner() =>
        Rental is not null && _authService.CurrentUser?.Id == Rental.OwnerId;

    private bool IsBorrower() =>
        Rental is not null && _authService.CurrentUser?.Id == Rental.BorrowerUserId;

    /// <summary>Calls the repository to change status only when <paramref name="canAct"/> passes (VM-side role and state guards).</summary>
    private async Task UpdateStatusIfAllowedAsync(Func<bool> canAct, string newStatus)
    {
        if (Rental is null || !canAct())
            return;

        var user = _authService.CurrentUser;
        if (user is null)
        {
            SetError("Sign in to update this rental.");
            return;
        }

        try
        {
            IsBusy = true;
            ClearError();
            await _rentalRepository.UpdateStatusAsync(Rental.Id, user.Id, newStatus);
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

    partial void OnRentalChanged(Rental? value)
    {
        NotifyRentalDerived();
    }

    private void NotifyRentalDerived()
    {
        OnPropertyChanged(nameof(HasRental));
        OnPropertyChanged(nameof(HasItemDescription));
        OnPropertyChanged(nameof(HasComments));
        OnPropertyChanged(nameof(HasRequestedAt));
        OnPropertyChanged(nameof(TotalPriceDisplay));
        OnPropertyChanged(nameof(DateRangeDisplay));
        OnPropertyChanged(nameof(StatusDisplayText));
        OnPropertyChanged(nameof(RequestedAtDisplay));
        OnPropertyChanged(nameof(ShowOwnerActions));
        OnPropertyChanged(nameof(ShowBorrowerCancel));
    }

    /// <summary>Maps API/local status strings to “pending-like” UI (approve/reject/cancel visibility).</summary>
    private static bool IsPendingLike(string? status)
    {
        if (string.IsNullOrWhiteSpace(status))
            return false;
        return status.Trim().Equals(RentalStatuses.Pending, StringComparison.OrdinalIgnoreCase);
    }
}
