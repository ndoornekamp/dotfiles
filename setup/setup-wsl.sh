#!/bin/sh
set -e

sudo apt update -y && sudo apt upgrade -y

sh setup/uv-install.sh

sh setup/customize-terminal.sh

sudo apt install zsh -y

bash setup/setup-kubernetes-tools.sh

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

sudo sh setup/docker-install.sh
sh setup/docker-post-install.sh
