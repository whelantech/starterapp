using StarterApp.ViewModels;

namespace StarterApp;

public partial class AppShell : Shell
{
	public AppShell(AppShellViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
		// Routes: register only in App.xaml.cs (before Shell is shown). Duplicate RegisterRoute here can break routing.
	}
}