using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class TempViewModelTests
{
    [Fact]
    public void Message_is_placeholder_when_AppInfo_runtime_missing()
    {
        // Arrange / Act — Title/Version would call AppInfo; cover the static copy path only.
        var vm = new TempViewModel();

        // Assert
        Assert.Contains("placeholder", vm.Message, StringComparison.OrdinalIgnoreCase);
    }
}
