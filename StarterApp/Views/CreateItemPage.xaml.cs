using StarterApp.ViewModels;

namespace StarterApp.Views;

/// <summary>
/// Uses <see cref="IQueryAttributable"/> so <c>?id=</c> is applied reliably on Android/iOS
/// (Shell often does not expose the query string on <see cref="Shell.CurrentState"/>).
/// </summary>
public partial class CreateItemPage : ContentPage, IQueryAttributable
{
    private readonly CreateItemViewModel _viewModel;

    public CreateItemPage(CreateItemViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }

    public void ApplyQueryAttributes(IDictionary<string, object> query)
    {
        if (query.TryGetValue("id", out var idObj)
            && idObj is not null
            && int.TryParse(Convert.ToString(idObj), out var id)
            && id > 0)
        {
            _ = _viewModel.InitializeAsync(id);
        }
        else
        {
            _ = _viewModel.InitializeAsync(null);
        }
    }
}
