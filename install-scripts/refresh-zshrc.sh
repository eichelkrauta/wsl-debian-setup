#!/usr/bin/env bash

set -euo pipefail

cp ../zshrc "$HOME/.zshrc"

# set +e -- zshell sources an unbound variable
set +e pipefail
# shellcheck disable=SC1090
source "$HOME/.zshrc"
set -e pipefail
