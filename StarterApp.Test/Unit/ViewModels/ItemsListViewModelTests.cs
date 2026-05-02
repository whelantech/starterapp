using StarterApp.Database.Models;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class ItemsListViewModelTests
{
    [Fact]
    public async Task InitializeAsync_loads_categories_and_items()
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

        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), new RecordingUiDialogs());

        await vm.InitializeAsync();

        Assert.False(vm.HasError);
        Assert.True(vm.Categories.Count >= 2);
        Assert.Single(vm.Items);
        Assert.Equal("Axe", vm.Items[0].Title);
    }

    [Fact]
    public async Task AddItemCommand_navigates_to_create_route()
    {
        var shell = new FakeShellNavigation();
        var vm = new ItemsListViewModel(new FakeItemRepository(), shell, new RecordingUiDialogs());

        await vm.AddItemCommand.ExecuteAsync(null);

        Assert.Single(shell.Routes);
        Assert.Equal("item", shell.Routes[0]);
    }

    [Fact]
    public async Task DeleteItemAsync_when_confirmed_removes_from_collection()
    {
        var repo = new FakeItemRepository();
        repo.Items.Add(new Item
            { Id = 7, Title = "DelMe", Description = "x", DailyRate = 1, CategoryId = 1, OwnerName = "O" });
        var ui = new RecordingUiDialogs();
        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), ui);

        await vm.InitializeAsync();
        vm.Items.Clear();
        vm.Items.Add(repo.Items[0]);

        await vm.DeleteItemCommand.ExecuteAsync(repo.Items[0]);

        Assert.DoesNotContain(vm.Items, i => i.Id == 7);
        Assert.Empty(repo.Items);
    }

    [Fact]
    public async Task DeleteItemAsync_when_api_mode_ThrowsNotImplemented_sets_error()
    {
        var repo = new FakeItemRepository { DeleteThrowsNotImplemented = true };
        repo.Items.Add(new Item
            { Id = 1, Title = "X", Description = "y", DailyRate = 1, CategoryId = 1, OwnerName = "O" });
        var ui = new RecordingUiDialogs();
        var vm = new ItemsListViewModel(repo, new FakeShellNavigation(), ui);
        vm.Items.Add(repo.Items[0]);

        await vm.DeleteItemCommand.ExecuteAsync(repo.Items[0]);

        Assert.True(vm.HasError);
        Assert.Contains("not available", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }
}
