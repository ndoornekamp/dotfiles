#!/bin/sh
set -e

if ! [ -x "$(command -v uv)" ]; then
    curl -LsSf https://astral.sh/uv/install.sh | sh
else
    echo "uv is already installed"
fi

export PATH="$HOME/.local/bin:$PATH"

mkdir -p "$HOME/dotfiles/local-plugins/uv" && "$HOME/.local/bin/uv" generate-shell-completion zsh >> "$HOME/dotfiles/local-plugins/uv/uv.zsh"
