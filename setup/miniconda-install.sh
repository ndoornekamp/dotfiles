#!/bin/sh

~/miniconda3/bin/conda init zsh

if ! [ -x "$(command -v conda)" ]; then
    echo "Conda is not yet installed"
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    bash Miniconda3-latest-Linux-x86_64.sh -b
    rm Miniconda3-latest-Linux-x86_64.sh -f
    export PATH="~/miniconda3/bin":$PATH
else
    echo "Conda is already installed"
fi
