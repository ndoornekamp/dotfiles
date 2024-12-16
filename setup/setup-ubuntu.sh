#!/bin/sh
set -e

sudo apt update -y && sudo apt upgrade -y

sudo sh setup/uv-install.sh

sudo sh setup/chrome-install.sh
sudo snap install --classic code

sh setup/customize-desktop.sh
sh setup/customize-terminal.sh

sudo apt install zsh -y

sudo sh setup/hadolint-install.sh

sudo sh setup/docker-install.sh
sh setup/docker-post-install.sh

bash setup/setup-kubernetes-tools.sh

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
