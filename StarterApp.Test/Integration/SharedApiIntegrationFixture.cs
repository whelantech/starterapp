using System.Net.Http.Headers;
using StarterApp.Database.Api;

namespace StarterApp.Test.Integration;

/// <summary>
/// Shared HTTPS wiring for opt-in hosted API integration tests (<c>SET09102_RUN_API_INTEGRATION=true</c>).
/// Keeps <see cref="SharedApiIntegrationTests"/> readable (DRY) without burying URLs in assertions.
/// </summary>
internal static class SharedApiIntegrationFixture
{
    internal const string DefaultApiBaseUrl = "https://set09102-api.b-davison.workers.dev/";

    /// <summary>Matches MAUI bootstrap: Bearer must precede authenticated routes.</summary>
    internal static bool ShouldRun =>
        string.Equals(Environment.GetEnvironmentVariable("SET09102_RUN_API_INTEGRATION"), "true",
            StringComparison.OrdinalIgnoreCase);

    internal static Uri ResolveBaseUri()
    {
        var raw = Environment.GetEnvironmentVariable("SET09102_API_BASE_URL");
        if (string.IsNullOrWhiteSpace(raw))
            return new Uri(DefaultApiBaseUrl);

        return new Uri(raw.EndsWith("/", StringComparison.Ordinal) ? raw : raw + "/", UriKind.Absolute);
    }

    /// <summary>Same defaults as MauiProgram Shared API branch (JSON Accept header).</summary>
    internal static HttpClient CreateHttpClient(Uri baseUri)
    {
        var client = new HttpClient { BaseAddress = baseUri };
        client.DefaultRequestHeaders.Add("Accept", "application/json");
        return client;
    }

    /// <summary>Registers random mailbox, obtains JWT, mutates Authorization header exactly like ApiAuthenticationService.</summary>
    internal static async Task<string> RegisterUniqueUserAndAttachBearerAsync(
        HttpClient http,
        IApiService api,
        CancellationToken cancellationToken = default)
    {
        var email = $"itest_{Guid.NewGuid():N}@example.com";
        var register = await api.PostAuthRegisterAsync(
                new RegisterApiRequest("Integration", "TestUser", email, "Password123!"),
                cancellationToken)
            .ConfigureAwait(false);

        if ((int)register.Status >= 400)
            throw new InvalidOperationException($"Register failed {(int)register.Status}: {register.Error?.Message}");

        var login = await api.PostAuthTokenAsync(email, "Password123!", cancellationToken).ConfigureAwait(false);

        if (login.Token is null)
            throw new InvalidOperationException(
                $"Login failed {(int)login.Status}: {login.Error?.Message ?? login.Error?.Error}");

        http.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", login.Token.Token);
        return email;
    }
}
