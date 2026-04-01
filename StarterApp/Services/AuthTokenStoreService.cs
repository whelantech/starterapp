namespace StarterApp.Services;

public class AuthTokenStoreService
{
    private const string TokenKey = "auth_token";
    private const string ExpiryKey = "auth_token_expiry";

    public async Task SaveTokenAsync(string token, DateTime expiresAt)
    {
        await SecureStorage.SetAsync(TokenKey, token);
        await SecureStorage.SetAsync(ExpiryKey, expiresAt.ToString("O"));
    }

    public async Task<string?> GetTokenAsync()
    {
        return await SecureStorage.GetAsync(TokenKey);
    }

    public async Task<DateTime?> GetExpiryAsync()
    {
        var expiry = await SecureStorage.GetAsync(ExpiryKey);

        if (DateTime.TryParse(expiry, out var parsed))
            return parsed;

        return null;
    }

    public void Clear()
    {
        SecureStorage.Remove(TokenKey);
        SecureStorage.Remove(ExpiryKey);
    }
}