#!/bin/sh
set -e

if ! [ -x "$(command -v uv)" ]; then
    curl -LsSf https://astral.sh/uv/install.sh | sh
else
    echo "uv is already installed"
fi

mkdir ~/dotfiles/local-plugins/uv && uv generate-shell-completion zsh >> ~/dotfiles/local-plugins/uv/uv.zsh