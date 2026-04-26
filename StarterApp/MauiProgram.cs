using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using StarterApp.ViewModels;
using StarterApp.Database.Data;
using StarterApp.Database.Models;
using StarterApp.Views;
using StarterApp.Database.Repositories;
using StarterApp.Services;

namespace StarterApp;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();

// -------------------------------------------------------------------
// Set useSharedApi to true to connect to the shared REST API,
// or false to use the local PostgreSQL database.
// This is an example of dependency injection — the ViewModels do
// not change regardless of which implementation is registered here.
// -------------------------------------------------------------------
        // Not `const` so the local-DB branch stays reachable for the compiler when toggling.
        // true = items + rentals + auth go to the hosted API (no local Rentals table; register/login against the API).
        // false = local PostgreSQL (run migrations; emulator uses 10.0.2.2 in appsettings).
        var useSharedApi = true;
        const string ApiBaseUrl = "https://set09102-api.b-davison.workers.dev/";

        if (useSharedApi)
        {
            // One HttpClient for auth + API repository so Bearer tokens set at login apply to /items, etc.
            builder.Services.AddSingleton(_ =>
            {
                var client = new HttpClient { BaseAddress = new Uri(ApiBaseUrl) };
                client.DefaultRequestHeaders.Add("Accept", "application/json");
                return client;
            });
            builder.Services.AddSingleton<IItemRepository, ApiItemRepository>();
            builder.Services.AddSingleton<IRentalRepository, ApiRentalRepository>();
            builder.Services.AddSingleton<ApiUserRepository>();
            builder.Services.AddSingleton<AuthTokenStoreService>();
            builder.Services.AddSingleton<IAuthenticationService, ApiAuthenticationService>();
        }
        else
        {
            builder.Services.AddSingleton<IAuthenticationService, AuthenticationService>();
            // Transient: each page gets its own repository + DbContext scope pair (avoids concurrent EF on one context).
            builder.Services.AddTransient(typeof(IRepository<,>), typeof(EfRepository<,>));
            // Same AppDbContext instance for ItemRepository and its composed IRepository<Category,int>.
            builder.Services.AddTransient<IItemRepository>(sp =>
            {
                var ctx = sp.GetRequiredService<AppDbContext>();
                return new ItemRepository(ctx, new EfRepository<Category, int>(ctx));
            });
            builder.Services.AddTransient<IRentalRepository, RentalRepository>();
        }

        builder.Services.AddSingleton<IRentalService, RentalService>();

        builder.Services.AddDbContext<AppDbContext>();

        builder
            .UseMauiApp<App>()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
            });

        builder.Services.AddSingleton<INavigationService, NavigationService>();

        builder.Services.AddSingleton<AppShellViewModel>();
        builder.Services.AddSingleton<AppShell>();
        builder.Services.AddSingleton<App>();
        builder.Services.AddTransient<MainViewModel>();
        builder.Services.AddTransient<MainPage>();
        builder.Services.AddSingleton<LoginViewModel>();
        builder.Services.AddTransient<LoginPage>();
        builder.Services.AddSingleton<RegisterViewModel>();
        builder.Services.AddTransient<RegisterPage>();
        builder.Services.AddTransient<UserListViewModel>();
        builder.Services.AddTransient<UserListPage>();
        builder.Services.AddTransient<UserDetailPage>();
        builder.Services.AddTransient<UserDetailViewModel>();
        // builder.Services.AddSingleton<TempViewModel>();
        // builder.Services.AddTransient<TempPage>();
        builder.Services.AddTransient<CreateItemViewModel>();
        builder.Services.AddTransient<CreateItemPage>();
        builder.Services.AddTransient<ItemsListViewModel>();
        builder.Services.AddTransient<ItemsPage>();
        builder.Services.AddTransient<ItemDetailViewModel>();
        builder.Services.AddTransient<ItemDetailsPage>();
        builder.Services.AddTransient<RentalRequestViewModel>();
        builder.Services.AddTransient<RentalRequestPage>();
        builder.Services.AddTransient<RentalListsViewModel>();
        builder.Services.AddTransient<RentalListsPage>();
        builder.Services.AddTransient<RentalDetailViewModel>();
        builder.Services.AddTransient<RentalDetailPage>();

#if DEBUG
        builder.Logging.AddDebug();
#endif

        var app = builder.Build();

        // Apply pending EF migrations (e.g. RepairRentalsTableIfMissing) against local PostgreSQL on launch.
        if (!useSharedApi)
        {
            try
            {
                using var scope = app.Services.CreateScope();
                scope.ServiceProvider.GetRequiredService<AppDbContext>().Database.Migrate();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Database.Migrate failed: {ex.Message}");
            }
        }

        return app;
    }
}
