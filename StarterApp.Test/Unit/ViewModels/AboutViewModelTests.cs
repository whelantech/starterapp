using StarterApp.ViewModels;

namespace StarterApp.Test.Unit.ViewModels;

public sealed class AboutViewModelTests
{
    [Fact]
    public void MoreInfoUrl_and_Message_are_stable_without_AppInfo_reads()
    {
        // Arrange — AppInfo-backed properties crash in bare net10 test host; bindings under test exclude them.
        var vm = new AboutViewModel();

        // Act & Assert — constants + copy only
        Assert.Equal("https://aka.ms/maui", vm.MoreInfoUrl);
        Assert.Contains("MAUI", vm.Message, StringComparison.OrdinalIgnoreCase);
    }
}
