#!/usr/bin/env sh
# Installs a TLS interception (e.g. corporate / Cloudflare Gateway) root CA
# from the live certificate chain for api.nuget.org, then refreshes the OS store.
# Fixes: NU1301 "Unable to load the service index" / "UntrustedRoot" for dotnet/nuget restore.
# Requires: openssl, ca-certificates, root (sudo) for cert install.
set -eu

if [ "$(id -u)" -ne 0 ] && [ -z "${SUDO-}" ]; then
  echo "Re-run with sudo, or: sudo sh $0" >&2
  exit 1
fi

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# Split PEM bundle from the TLS handshake
echo | openssl s_client -connect api.nuget.org:443 -servername api.nuget.org -showcerts 2>/dev/null \
  | awk '/BEGIN CERTIFICATE/,/END CERTIFICATE/{print}' | \
  awk 'BEGIN{c=0} /BEGIN/{c++} {print > "'"$TMP"'/cert" c ".pem"}'

i=0
for f in "$TMP"/cert*.pem; do
  [ -f "$f" ] || continue
  i=$((i + 1))
  subj=$(openssl x509 -in "$f" -noout -subject 2>/dev/null | sed 's/^subject=//')
  iss=$(openssl x509 -in "$f" -noout -issuer 2>/dev/null | sed 's/^issuer=//')
  if [ "$subj" = "$iss" ]; then
    out="/usr/local/share/ca-certificates/tls-interception-${i}.crt"
    cp "$f" "$out"
    echo "Installed self-signed root to $out"
  fi
done

if command -v update-ca-certificates >/dev/null 2>&1; then
  update-ca-certificates
  echo "CA store updated. Retry: dotnet restore"
else
  echo "update-ca-certificates not found; install ca-certificates package." >&2
  exit 1
fi
