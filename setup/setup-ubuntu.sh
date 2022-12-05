#!/bin/sh
set -e

apt update -y && apt upgrade -y

apt install git -y
apt install python3 python3-venv python3-pip -y

apt install chromium-browser -y
snap install --classic code

sh customize-desktop.sh

sh docker-install.sh
sh docker post-install.sh

sh setup-zsh.sh

apt update -y && apt upgrade -y
