using System.Reflection;
using System.Windows.Input;
using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

/// <summary>Exercise <see cref="BaseViewModel"/> protected helpers via a trivial subclass.</summary>
public sealed class BaseViewModelTests
{
    private sealed class TestBaseViewModel : BaseViewModel
    {
        public void UseSetError(string message) => SetError(message);

        public void UseClearError() => ClearError();
    }

    [Fact]
    public void SetError_sets_message_and_HasError_ClearError_resets()
    {
        // Arrange
        var vm = new TestBaseViewModel();

        // Act
        vm.UseSetError("oops");

        // Assert
        Assert.True(vm.HasError);
        Assert.Equal("oops", vm.ErrorMessage);

        // Act
        vm.UseClearError();

        // Assert
        Assert.False(vm.HasError);
        Assert.Empty(vm.ErrorMessage);
    }

    [Fact]
    public void ClearErrorCommand_clears_error_state()
    {
        // Arrange
        var vm = new TestBaseViewModel();
        vm.UseSetError("temporary");
        var cmd = typeof(BaseViewModel).GetProperty("ClearErrorCommandCommand", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic);
        Assert.NotNull(cmd);
        var relay = (ICommand)cmd!.GetValue(vm)!;

        // Act
        relay.Execute(null);

        // Assert
        Assert.False(vm.HasError);
        Assert.Empty(vm.ErrorMessage);
    }
}
