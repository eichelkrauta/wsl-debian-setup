#!/usr/bin/env bash

set -euo pipefail

set +e pipefail
source <(kubectl completion zsh)

echo "source <(kubectl completion zsh)" >> "$HOME/.zshrc"
echo "alias k=kubectl" >> "$HOME/.zshrc"

set -e pipefail
