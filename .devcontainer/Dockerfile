FROM mcr.microsoft.com/devcontainers/java:1-21-bookworm

# Ensure gnupg/curl available and add Yarn APT public key so apt can verify the repo
RUN set -eux \
  # Temporarily move Yarn APT source if present so apt-get update doesn't fail
  && mv /etc/apt/sources.list.d/yarn*.list /tmp/ 2>/dev/null || true \
  && apt-get update \
  && apt-get install -y --no-install-recommends gnupg dirmngr ca-certificates curl \
  && curl -fsSL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor -o /usr/share/keyrings/yarn-archive-keyring.gpg \
  # Restore any moved Yarn source list(s)
  && mv /tmp/yarn*.list /etc/apt/sources.list.d/ 2>/dev/null || true \
  && rm -rf /var/lib/apt/lists/*
