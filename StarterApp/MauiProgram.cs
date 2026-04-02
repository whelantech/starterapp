using Microsoft.Extensions.Logging;
using StarterApp.ViewModels;
using StarterApp.Database.Data;
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
        var useSharedApi = false;
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
            builder.Services.AddSingleton<AuthTokenStoreService>();
            builder.Services.AddSingleton<IAuthenticationService, ApiAuthenticationService>();
        }
        else
        {
            builder.Services.AddSingleton<IAuthenticationService, AuthenticationService>();
            builder.Services.AddSingleton<IItemRepository, ItemRepository>();
        }

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
        builder.Services.AddSingleton<TempViewModel>();
        builder.Services.AddTransient<TempPage>();
        builder.Services.AddTransient<CreateItemViewModel>();
        builder.Services.AddTransient<CreateItemPage>();
        builder.Services.AddTransient<ItemListViewModel>();
        builder.Services.AddTransient<ItemsPage>();

#if DEBUG
        builder.Logging.AddDebug();
#endif

        return builder.Build();
    }
}
