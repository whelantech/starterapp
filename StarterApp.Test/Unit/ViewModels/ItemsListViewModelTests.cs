using StarterApp.Database.Models;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;
using StarterApp.Views;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class ItemsListViewModelTests
{
    private static FakeItemRepository RepoWithCategoriesAndItem()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "Tools", ColorHex = "#000" });
        repo.Items.Add(new Item
        {
            Id = 1,
            Title = "Axe",
            Description = "Sharp",
            DailyRate = 3,
            CategoryId = 1,
            OwnerName = "O",
            IsAvailable = true,
            Category = new Category { Id = 1, Name = "Tools", ColorHex = "#000" }
        });
        return repo;
    }

    [Fact]
    public async Task InitializeAsync_loads_categories_and_items()
    {
        // Arrange
        var repo = RepoWithCategoriesAndItem();
        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), new RecordingUiDialogs());

        // Act
        await vm.InitializeAsync();

        // Assert
        Assert.False(vm.HasError);
        Assert.True(vm.Categories.Count >= 2);
        Assert.Single(vm.Items);
        Assert.Equal("Axe", vm.Items[0].Title);
    }

    [Fact]
    public async Task InitializeAsync_when_items_query_fails_sets_error()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "Tools", ColorHex = "#000" });
        repo.GetAllItemsFault = new InvalidOperationException("boom");

        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), new RecordingUiDialogs());

        await vm.InitializeAsync();

        Assert.True(vm.HasError);
        Assert.Contains("items", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task AddItemCommand_navigates_to_create_route()
    {
        // Arrange
        var shell = new FakeShellNavigation();
        var vm = new ItemsListViewModel(new FakeItemRepository(), shell, new RecordingUiDialogs());

        // Act
        await vm.AddItemCommand.ExecuteAsync(null);

        // Assert
        Assert.Single(shell.Routes);
        Assert.Equal("item", shell.Routes[0]);
    }

    [Fact]
    public async Task OpenItemDetailAsync_with_item_navigates_to_details_route()
    {
        var shell = new FakeShellNavigation();
        var vm = new ItemsListViewModel(new FakeItemRepository(), shell, new RecordingUiDialogs());
        var row = new Item { Id = 55, Title = "X", Description = "d", DailyRate = 1, CategoryId = 1, OwnerName = "Z" };

        await vm.OpenItemDetailCommand.ExecuteAsync(row);

        Assert.Single(shell.Routes);
        Assert.Contains(nameof(ItemDetailsPage), shell.Routes[0], StringComparison.OrdinalIgnoreCase);
        Assert.Contains("id=55", shell.Routes[0], StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task OpenItemDetailAsync_when_item_null_skips_navigation()
    {
        var shell = new FakeShellNavigation();
        var vm = new ItemsListViewModel(new FakeItemRepository(), shell, new RecordingUiDialogs());

        await vm.OpenItemDetailCommand.ExecuteAsync(null);

        Assert.Empty(shell.Routes);
    }

    [Fact]
    public async Task EditItemAsync_routes_shell_with_edit_id()
    {
        var shell = new FakeShellNavigation();
        var vm = new ItemsListViewModel(new FakeItemRepository(), shell, new RecordingUiDialogs());
        var row = new Item { Id = 9, Title = "X", Description = "d", DailyRate = 1, CategoryId = 1 };

        await vm.EditItemCommand.ExecuteAsync(row);

        Assert.Single(shell.Routes);
        Assert.Equal("item?id=9", shell.Routes[0]);
    }

    [Fact]
    public async Task RefreshCommand_reloads_items_from_repository()
    {
        // Arrange
        var repo = RepoWithCategoriesAndItem();
        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), new RecordingUiDialogs());
        await vm.InitializeAsync();
        repo.Items.Clear();
        repo.Items.Add(new Item
        {
            Id = 2,
            Title = "Beta",
            Description = "b",
            DailyRate = 2,
            CategoryId = 1,
            OwnerName = "P",
            IsAvailable = true
        });

        // Act
        await vm.RefreshCommand.ExecuteAsync(null);

        // Assert
        Assert.False(vm.HasError);
        Assert.False(vm.IsRefreshing);
        Assert.Single(vm.Items);
        Assert.Equal("Beta", vm.Items[0].Title);
    }

    [Fact]
    public async Task DeleteItemAsync_when_confirmed_removes_from_collection()
    {
        // Arrange
        var repo = new FakeItemRepository();
        repo.Items.Add(new Item
            { Id = 7, Title = "DelMe", Description = "x", DailyRate = 1, CategoryId = 1, OwnerName = "O" });
        var ui = new RecordingUiDialogs();
        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), ui);

        await vm.InitializeAsync();
        vm.Items.Clear();
        vm.Items.Add(repo.Items[0]);

        // Act
        await vm.DeleteItemCommand.ExecuteAsync(repo.Items[0]);

        // Assert
        Assert.DoesNotContain(vm.Items, i => i.Id == 7);
        Assert.Empty(repo.Items);
    }

    [Fact]
    public async Task DeleteItemAsync_when_cancel_keeps_repo()
    {
        var repo = new FakeItemRepository();
        repo.Items.Add(new Item
            { Id = 71, Title = "KeepMe", Description = "z", DailyRate = 2, CategoryId = 1, OwnerName = "O" });
        var ui = new RecordingUiDialogs();
        ui.ConfirmResults.Enqueue(false);
        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), ui);

        vm.Items.Add(repo.Items[0]);

        await vm.DeleteItemCommand.ExecuteAsync(repo.Items[0]);

        Assert.Single(repo.Items);
    }

    [Fact]
    public async Task DeleteItemAsync_when_api_mode_ThrowsNotImplemented_sets_error()
    {
        // Arrange
        var repo = new FakeItemRepository { DeleteThrowsNotImplemented = true };
        repo.Items.Add(new Item
            { Id = 1, Title = "X", Description = "y", DailyRate = 1, CategoryId = 1, OwnerName = "O" });
        var ui = new RecordingUiDialogs();
        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), ui);
        vm.Items.Add(repo.Items[0]);

        // Act
        await vm.DeleteItemCommand.ExecuteAsync(repo.Items[0]);

        // Assert
        Assert.True(vm.HasError);
        Assert.Contains("not available", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }
}
