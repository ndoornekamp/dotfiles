#!/bin/sh
set -e

sudo apt update -y && sudo apt upgrade -y

sudo sh setup/uv-install.sh | sh

sh setup/customize-terminal.sh

sudo apt install zsh -y

bash setup/setup-kubernetes-tools.sh

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
