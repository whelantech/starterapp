using System;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StarterApp.Converters;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Database.Workflow;
using StarterApp.Services;

namespace StarterApp.ViewModels;

public partial class RentalDetailViewModel : BaseViewModel
{
    private readonly IRentalRepository _rentalRepository;
    private readonly IAuthenticationService _authService;
    private readonly INavigationService _navigationService;
    private readonly IRentalWorkflowPolicy _workflowPolicy;

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
        && _authService.CurrentUser?.Id == Rental.OwnerId
        && TransitionAllowed(RentalTransition.Approve);

    public bool ShowBorrowerCancel =>
        Rental is not null
        && _authService.CurrentUser?.Id == Rental.BorrowerUserId
        && _workflowPolicy.BorrowerCanWithdrawPendingRequest
        && TransitionAllowed(RentalTransition.Cancel);

    /// <summary>
    /// Shared API does not support borrower withdrawal; explains why cancel is unavailable.
    /// </summary>
    public bool ShowBorrowerWithdrawUnavailableHint =>
        Rental is not null
        && _workflowPolicy.IsRemoteApiMode
        && _workflowPolicy.IsRequestedLike(Rental.Status)
        && _authService.CurrentUser?.Id == Rental.BorrowerUserId;

    public bool ShowOwnerApprovedBeforeStart =>
        Rental is not null
        && _authService.CurrentUser?.Id == Rental.OwnerId
        && _workflowPolicy.IsApprovedLike(Rental.Status)
        && TodayUtc < Rental.StartDate;

    public bool ShowOwnerStartRental =>
        Rental is not null
        && _authService.CurrentUser?.Id == Rental.OwnerId
        && TransitionAllowed(RentalTransition.StartRental);

    public bool ShowBorrowerReturn =>
        Rental is not null
        && _authService.CurrentUser?.Id == Rental.BorrowerUserId
        && TransitionAllowed(RentalTransition.Return);

    public bool ShowOwnerComplete =>
        Rental is not null
        && _authService.CurrentUser?.Id == Rental.OwnerId
        && TransitionAllowed(RentalTransition.Complete);

    private static DateOnly TodayUtc => DateOnly.FromDateTime(DateTime.UtcNow);

    public RentalDetailViewModel(
        IRentalRepository rentalRepository,
        IAuthenticationService authService,
        INavigationService navigationService,
        IRentalWorkflowPolicy workflowPolicy)
    {
        _rentalRepository = rentalRepository;
        _authService = authService;
        _navigationService = navigationService;
        _workflowPolicy = workflowPolicy;
        Title = "Rental details";
    }

    private bool TransitionAllowed(RentalTransition transition)
    {
        var userId = _authService.CurrentUser?.Id;
        if (Rental is null || userId is null)
            return false;

        return _workflowPolicy.CanTransition(Rental, userId.Value, transition, TodayUtc).Allowed;
    }

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
        await TransitionIfAllowedAsync(RentalTransition.Approve, navigateBack: true);
    }

    [RelayCommand]
    private async Task RejectAsync()
    {
        await TransitionIfAllowedAsync(RentalTransition.Reject, navigateBack: true);
    }

    [RelayCommand]
    private async Task CancelAsBorrowerAsync()
    {
        await TransitionIfAllowedAsync(RentalTransition.Cancel, navigateBack: true);
    }

    [RelayCommand]
    private async Task StartRentalAsync()
    {
        await TransitionIfAllowedAsync(RentalTransition.StartRental, navigateBack: false);
    }

    [RelayCommand]
    private async Task ReturnAsync()
    {
        await TransitionIfAllowedAsync(RentalTransition.Return, navigateBack: false);
    }

    [RelayCommand]
    private async Task CompleteAsync()
    {
        await TransitionIfAllowedAsync(RentalTransition.Complete, navigateBack: false);
    }

    private async Task TransitionIfAllowedAsync(RentalTransition transition, bool navigateBack)
    {
        if (Rental is null)
            return;

        var user = _authService.CurrentUser;
        if (user is null)
        {
            SetError("Sign in to update this rental.");
            return;
        }

        var (allowed, reason) = _workflowPolicy.CanTransition(Rental, user.Id, transition, TodayUtc);
        if (!allowed)
        {
            SetError(reason ?? "This action is not allowed.");
            return;
        }

        var rentalId = Rental.Id;
        try
        {
            IsBusy = true;
            ClearError();
            await _rentalRepository.TransitionAsync(rentalId, user.Id, transition);
            if (navigateBack)
                await _navigationService.NavigateBackAsync();
            else
                await LoadAsync(rentalId, isRefresh: true);
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
        OnPropertyChanged(nameof(ShowBorrowerWithdrawUnavailableHint));
        OnPropertyChanged(nameof(ShowOwnerApprovedBeforeStart));
        OnPropertyChanged(nameof(ShowOwnerStartRental));
        OnPropertyChanged(nameof(ShowBorrowerReturn));
        OnPropertyChanged(nameof(ShowOwnerComplete));
    }
}
