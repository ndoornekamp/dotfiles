#!/bin/sh
set -e

if ! [ -x "$(command -v hadolint)" ]; then
    echo "Hadolint is not yet installed"
    wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64
    chmod +x /bin/hadolint
    exit
else
    echo "Hadolint is already installed"
    exit
fi
