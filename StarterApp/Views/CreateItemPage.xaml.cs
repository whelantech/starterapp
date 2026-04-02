using StarterApp.ViewModels;

namespace StarterApp.Views;

public partial class CreateItemPage : ContentPage
{
    private readonly CreateItemViewModel _viewModel;

    public CreateItemPage(CreateItemViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        try
        {
            // Get query parameter from Shell navigation
            var uri = Shell.Current?.CurrentState?.Location?.OriginalString;

            int? itemId = null;

            if (!string.IsNullOrEmpty(uri) && uri.Contains("id="))
            {
                var query = uri.Split('?').LastOrDefault();

                if (!string.IsNullOrEmpty(query))
                {
                    var pairs = query.Split('&');

                    foreach (var pair in pairs)
                    {
                        var kv = pair.Split('=');

                        if (kv.Length == 2 && kv[0] == "id" && int.TryParse(kv[1], out int id))
                        {
                            itemId = id;
                            break;
                        }
                    }
                }
            }

            await _viewModel.InitializeAsync(itemId);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"CreateItemPage.OnAppearing: {ex}");
            await DisplayAlertAsync("Create Item", $"Could not load: {ex.Message}", "OK");
        }
    }
}