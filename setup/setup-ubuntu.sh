#!/bin/sh
set -e

sudo apt update -y && sudo apt upgrade -y

sudo apt install git -y
sudo apt install python3 python3-venv python3-pip -y

sudo sh setup/chrome-install.sh
sudo snap install --classic code

sh setup/customize-desktop.sh
sh setup/customize-terminal.sh

sudo apt install zsh

sh setup/hadolint-install.sh
sh setup/miniconda-install.sh

sudo sh setup/docker-install.sh
sh setup/docker-post-install.sh

sudo apt update -y && sudo apt upgrade -y
