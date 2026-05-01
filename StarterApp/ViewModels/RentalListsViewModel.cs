using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Maui.ApplicationModel;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;
using StarterApp.Views;

namespace StarterApp.ViewModels;

/// <summary>
/// Lists rentals for the signed-in user: outgoing (as borrower) vs incoming (as owner), with navigation to detail.
/// </summary>
public partial class RentalListsViewModel : BaseViewModel
{
    private readonly IRentalRepository _rentalRepository;
    private readonly IAuthenticationService _authService;
    private readonly INavigationService _navigationService;

    /// <summary>0 = outgoing, 1 = incoming.</summary>
    [ObservableProperty] private int scopeIndex;

    public ObservableCollection<Rental> Rentals { get; } = new();

    public RentalListsViewModel(
        IRentalRepository rentalRepository,
        IAuthenticationService authService,
        INavigationService navigationService)
    {
        _rentalRepository = rentalRepository;
        _authService = authService;
        _navigationService = navigationService;
        Title = "My Rental Requests";
    }

    /// <summary>Opens the read-only detail page for a rental (incoming or outgoing).</summary>
    [RelayCommand]
    private async Task OpenRentalDetailAsync(Rental? rental)
    {
        if (rental is null)
            return;

        await _navigationService.NavigateToAsync($"{nameof(RentalDetailPage)}?rentalId={rental.Id}");
    }

    partial void OnScopeIndexChanged(int value)
    {
        _ = LoadAsync();
    }

    /// <summary>Loads outgoing or incoming rentals from <see cref="ScopeIndex"/> and replaces <see cref="Rentals"/> on the UI thread.</summary>
    [RelayCommand]
    public async Task LoadAsync()
    {
        var user = _authService.CurrentUser;
        if (user is null)
        {
            await MainThreadInvokeAsync(() =>
            {
                Rentals.Clear();
            });
            SetError("Sign in to see your rentals.");
            return;
        }

        try
        {
            IsBusy = true;
            ClearError();

            IReadOnlyList<Rental> list = ScopeIndex == 0
                ? await _rentalRepository.GetOutgoingAsync(user.Id)
                : await _rentalRepository.GetIncomingAsync(user.Id);

            await MainThreadInvokeAsync(() =>
            {
                Rentals.Clear();
                foreach (var r in list)
                    Rentals.Add(r);
            });
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

    /// <summary>Runs UI-bound collection updates on the MAUI main thread to avoid cross-thread ObservableCollection errors.</summary>
    private static Task MainThreadInvokeAsync(Action action)
    {
        if (MainThread.IsMainThread)
        {
            action();
            return Task.CompletedTask;
        }

        return MainThread.InvokeOnMainThreadAsync(action);
    }

}
