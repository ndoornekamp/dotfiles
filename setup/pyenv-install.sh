#!/bin/sh

apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

if ! [ -x "$(command -v pyenv)" ]; then
    echo "Pyenv is not yet installed"
    curl https://pyenv.run | bash
else
    echo "Pyenv is already installed"
fi
