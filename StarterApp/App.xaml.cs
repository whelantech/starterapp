using StarterApp.ViewModels;
using StarterApp.Services;

namespace StarterApp;

public partial class App : Application
{
	private readonly IServiceProvider _serviceProvider;
	public App(IServiceProvider serviceProvider)
	{
		_serviceProvider = serviceProvider;
		InitializeComponent();

		_ = RestoreStoredAuthAsync();

		Routing.RegisterRoute(nameof(Views.MainPage), typeof(Views.MainPage));
		Routing.RegisterRoute(nameof(Views.LoginPage), typeof(Views.LoginPage));
		Routing.RegisterRoute(nameof(Views.RegisterPage), typeof(Views.RegisterPage));
		Routing.RegisterRoute(nameof(Views.UserListPage), typeof(Views.UserListPage));
		Routing.RegisterRoute(nameof(Views.UserDetailPage), typeof(Views.UserDetailPage));
		Routing.RegisterRoute(nameof(Views.TempPage), typeof(Views.TempPage));
		Routing.RegisterRoute(nameof(Views.CreateItemPage), typeof(Views.CreateItemPage));
		Routing.RegisterRoute(nameof(Views.ItemsPage), typeof(Views.ItemsPage));
		Routing.RegisterRoute(nameof(Views.ItemDetailsPage), typeof(Views.ItemDetailsPage));
		Routing.RegisterRoute(nameof(Views.RentalRequestPage), typeof(Views.RentalRequestPage));
		Routing.RegisterRoute(nameof(Views.RentalListsPage), typeof(Views.RentalListsPage));
		Routing.RegisterRoute(nameof(Views.RentalDetailPage), typeof(Views.RentalDetailPage));
	}

	private async Task RestoreStoredAuthAsync()
	{
		var auth = _serviceProvider.GetService<IAuthenticationService>();
		if (auth is ApiAuthenticationService apiAuth)
			await apiAuth.InitializeAsync();
	}

	protected override Window CreateWindow(IActivationState? activationState)
	{
		// var window = base.CreateWindow(activationState);
		// window.Page = new AppShell();

		var shell = _serviceProvider.GetService<AppShell>();
		if (shell == null)
		{
			// Handle the error if AppShell could not be resolved
			throw new InvalidOperationException("AppShell could not be resolved from the service provider.");
		}
		var window = new Window(shell);
		return window;
	}
}
