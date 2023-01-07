#!/bin/sh
set -e

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
rm Miniconda3-latest-Linux-x86_64.sh -f

export PATH="~/miniconda3/bin":$PATH
conda init zsh