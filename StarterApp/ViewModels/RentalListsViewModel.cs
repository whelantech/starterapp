using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Maui.ApplicationModel;
using StarterApp.Database.Models;
using StarterApp.Database.Repositories;
using StarterApp.Services;
using StarterApp.Views;

namespace StarterApp.ViewModels;

public partial class RentalListsViewModel : BaseViewModel
{
    private readonly IRentalRepository _rentalRepository;
    private readonly IAuthenticationService _authService;
    private readonly INavigationService _navigationService;

    /// <summary>0 = outgoing, 1 = incoming.</summary>
    [ObservableProperty] private int scopeIndex;

    /// <summary>Row selection (cleared after opening details; drives CollectionView highlight).</summary>
    [ObservableProperty] private Rental? selectedRental;

    public ObservableCollection<Rental> Rentals { get; } = new();

    public RentalListsViewModel(
        IRentalRepository rentalRepository,
        IAuthenticationService authService,
        INavigationService navigationService)
    {
        _rentalRepository = rentalRepository;
        _authService = authService;
        _navigationService = navigationService;
        Title = "My rentals";
    }

    /// <summary>Opens the read-only detail page for a rental (incoming or outgoing).</summary>
    public async Task OpenRentalDetailAsync(Rental rental)
    {
        if (rental is null)
            return;

        await _navigationService.NavigateToAsync($"{nameof(RentalDetailPage)}?rentalId={rental.Id}");
        SelectedRental = null;
    }

    partial void OnScopeIndexChanged(int value)
    {
        SelectedRental = null;
        _ = LoadAsync();
    }

    [RelayCommand]
    public async Task LoadAsync()
    {
        var user = _authService.CurrentUser;
        if (user is null)
        {
            await MainThreadInvokeAsync(() =>
            {
                SelectedRental = null;
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
                SelectedRental = null;
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
