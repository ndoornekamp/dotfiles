#!/bin/sh
set -e

if ! [ -x "$(command -v conda)" ]; then
    echo "Conda is not yet installed"
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    bash Miniconda3-latest-Linux-x86_64.sh -b
    rm Miniconda3-latest-Linux-x86_64.sh -f

    export PATH="~/miniconda3/bin":$PATH
    conda init zsh
    exit
else
    echo "Conda is already installed"
    exit
fi