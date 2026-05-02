using StarterApp.Database.Models;
using StarterApp.Test.Fakes;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class CreateItemViewModelTests
{
    private static FakeAuthenticationService OwnerAuth(int userId = 101) =>
        new()
        {
            CurrentUser = new User { Id = userId, FirstName = "O", LastName = "Owner", Email = "o@o.o" },
        };

    [Fact]
    public async Task InitializeAsync_without_itemId_sets_New_Item_title_and_categories()
    {
        // Arrange
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "Tools", ColorHex = "#000" });
        var shell = new FakeShellNavigation();

        var vm = new CreateItemViewModel(repo, OwnerAuth(), shell, new RecordingUiDialogs());

        // Act
        await vm.InitializeAsync();

        // Assert
        Assert.False(vm.HasError);
        Assert.Equal("New Item", vm.Title);
        Assert.NotEmpty(vm.Categories);
        Assert.False(vm.IsEditMode);
        Assert.Empty(shell.Routes);
    }

    [Fact]
    public async Task InitializeAsync_as_owner_sets_edit_mode_and_fields()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "Tools", ColorHex = "#999" });
        repo.Items.Add(new Item
        {
            Id = 10,
            Title = "Bike",
            Description = "Red",
            DailyRate = 4,
            CategoryId = 1,
            OwnerId = 101,
            Latitude = 1.5,
            Longitude = -2.5,
            IsAvailable = false
        });
        var shell = new FakeShellNavigation();
        var vm = new CreateItemViewModel(repo, OwnerAuth(101), shell, new RecordingUiDialogs());

        await vm.InitializeAsync(10);

        Assert.False(vm.HasError);
        Assert.True(vm.IsEditMode);
        Assert.Equal("Edit Item", vm.Title);
        Assert.Equal("Bike", vm.ItemTitle);
        Assert.Equal("Red", vm.Description);
        Assert.Equal(4, vm.DailyRate);
        Assert.False(vm.IsAvailable);
        Assert.Equal(1, vm.SelectedCategory?.Id);
        Assert.Empty(shell.Routes);
    }

    [Fact]
    public async Task InitializeAsync_when_not_owner_navigates_back()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "Tools", ColorHex = "#999" });
        repo.Items.Add(new Item
        {
            Id = 11,
            Title = "Foreign",
            Description = "x",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = 999
        });
        var shell = new FakeShellNavigation();
        var vm = new CreateItemViewModel(repo, OwnerAuth(101), shell, new RecordingUiDialogs());

        await vm.InitializeAsync(11);

        Assert.Single(shell.Routes);
        Assert.Equal("..", shell.Routes[0]);
    }

    [Fact]
    public async Task InitializeAsync_categories_failure_sets_error_on_BaseViewModel()
    {
        var repo = new FakeItemRepository { GetCategoriesException = new InvalidOperationException("db down") };
        var vm = new CreateItemViewModel(repo, OwnerAuth(), new FakeShellNavigation(), new RecordingUiDialogs());

        await vm.InitializeAsync();

        Assert.True(vm.HasError);
        Assert.Contains("Failed to load", vm.ErrorMessage, StringComparison.Ordinal);
    }

    [Fact]
    public async Task SaveAsync_empty_title_sets_ErrorMessage()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 3, Name = "X", ColorHex = "#ccc" });
        var vm = new CreateItemViewModel(repo, OwnerAuth(), new FakeShellNavigation(), new RecordingUiDialogs())
        {
            ItemTitle = "",
            Description = "desc",
            SelectedCategory = repo.Categories[0]
        };

        await vm.SaveCommand.ExecuteAsync(null);

        Assert.Contains("Title is required", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
        Assert.Empty(repo.Items);
    }

    [Fact]
    public async Task SaveAsync_empty_description_sets_ErrorMessage()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 3, Name = "X", ColorHex = "#ccc" });
        var vm = new CreateItemViewModel(repo, OwnerAuth(), new FakeShellNavigation(), new RecordingUiDialogs())
        {
            ItemTitle = "t",
            Description = "",
            SelectedCategory = repo.Categories[0]
        };

        await vm.SaveCommand.ExecuteAsync(null);

        Assert.Contains("Description is required", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task SaveAsync_when_category_missing_sets_prompt()
    {
        var repo = new FakeItemRepository();
        var vm = new CreateItemViewModel(repo, OwnerAuth(), new FakeShellNavigation(), new RecordingUiDialogs())
        {
            ItemTitle = "ok",
            Description = "ok",
            SelectedCategory = null
        };

        await vm.SaveCommand.ExecuteAsync(null);

        Assert.Contains("category", vm.ErrorMessage, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public async Task SaveAsync_create_persists_and_navigates_back()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "Tools", ColorHex = "#000" });
        var shell = new FakeShellNavigation();
        var vm = new CreateItemViewModel(repo, OwnerAuth(55), shell, new RecordingUiDialogs());
        await vm.InitializeAsync();
        vm.ItemTitle = "Drill";
        vm.Description = "Heavy";
        vm.DailyRate = 5;
        vm.SelectedCategory = vm.Categories.First(c => c.Id == 1);

        await vm.SaveCommand.ExecuteAsync(null);

        Assert.Single(repo.Items, i => i.Title == "Drill" && i.OwnerId == 55);
        Assert.Contains(shell.Routes, r => r == "..");
    }

    [Fact]
    public async Task SaveAsync_update_calls_repository_and_navigates_back()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "Tools", ColorHex = "#000" });
        repo.Items.Add(new Item
        {
            Id = 3,
            Title = "Old",
            Description = "Old d",
            DailyRate = 1,
            CategoryId = 1,
            OwnerId = 7,
            Latitude = 2,
            Longitude = 3
        });
        var shell = new FakeShellNavigation();
        var vm = new CreateItemViewModel(repo, OwnerAuth(7), shell, new RecordingUiDialogs());
        await vm.InitializeAsync(3);
        vm.ItemTitle = "New title";
        vm.Description = "New desc";
        vm.DailyRate = 9;
        vm.SelectedCategory = vm.Categories.First(c => c.Id == 1);

        await vm.SaveCommand.ExecuteAsync(null);

        var stored = repo.Items.First(i => i.Id == 3);
        Assert.Equal("New title", stored.Title);
        Assert.Equal(9, stored.DailyRate);
        Assert.Contains(shell.Routes, r => r == "..");
    }

    [Fact]
    public async Task SaveAsync_when_create_throws_sets_ErrorMessage()
    {
        var repo = new FakeItemRepository { CreateItemFault = new InvalidOperationException("boom") };
        repo.Categories.Add(new Category { Id = 1, Name = "T", ColorHex = "#000" });
        var shell = new FakeShellNavigation();
        var vm = new CreateItemViewModel(repo, OwnerAuth(1), shell, new RecordingUiDialogs());
        await vm.InitializeAsync();
        vm.ItemTitle = "x";
        vm.Description = "y";
        vm.SelectedCategory = vm.Categories[0];

        await vm.SaveCommand.ExecuteAsync(null);

        Assert.Contains("Failed to save", vm.ErrorMessage, StringComparison.Ordinal);
    }

    [Fact]
    public async Task DeleteAsync_when_not_edit_mode_does_nothing()
    {
        var repo = new FakeItemRepository();
        var ui = new RecordingUiDialogs();
        var vm = new CreateItemViewModel(repo, OwnerAuth(), new FakeShellNavigation(), ui);
        await vm.InitializeAsync();

        await vm.DeleteCommand.ExecuteAsync(null);

        Assert.Empty(ui.Confirms);
    }

    [Fact]
    public async Task DeleteAsync_when_cancelled_does_not_delete()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "T", ColorHex = "#000" });
        repo.Items.Add(new Item { Id = 5, Title = "K", Description = "d", DailyRate = 1, CategoryId = 1, OwnerId = 1 });
        var ui = new RecordingUiDialogs();
        ui.ConfirmResults.Enqueue(false);
        var vm = new CreateItemViewModel(repo, OwnerAuth(1), new FakeShellNavigation(), ui);
        await vm.InitializeAsync(5);

        await vm.DeleteCommand.ExecuteAsync(null);

        Assert.Single(repo.Items);
    }

    [Fact]
    public async Task DeleteAsync_when_confirmed_removes_and_navigates_back()
    {
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "T", ColorHex = "#000" });
        repo.Items.Add(new Item { Id = 12, Title = "K", Description = "d", DailyRate = 1, CategoryId = 1, OwnerId = 2 });
        var shell = new FakeShellNavigation();
        var ui = new RecordingUiDialogs();
        ui.ConfirmResults.Enqueue(true);
        var vm = new CreateItemViewModel(repo, OwnerAuth(2), shell, ui);
        await vm.InitializeAsync(12);

        await vm.DeleteCommand.ExecuteAsync(null);

        Assert.Empty(repo.Items);
        Assert.Contains(shell.Routes, r => r == "..");
    }

    [Fact]
    public async Task CancelAsync_navigates_back()
    {
        var shell = new FakeShellNavigation();
        var repo = new FakeItemRepository();
        repo.Categories.Add(new Category { Id = 1, Name = "T", ColorHex = "#000" });
        var vm = new CreateItemViewModel(repo, OwnerAuth(), shell, new RecordingUiDialogs());

        await vm.CancelCommand.ExecuteAsync(null);

        Assert.Single(shell.Routes);
        Assert.Equal("..", shell.Routes[0]);
    }
}
