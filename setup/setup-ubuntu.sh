#!/bin/sh
set -e

apt update -y && apt upgrade -y

apt install git -y
apt install python3 python3-venv python3-pip -y

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update
apt-get install google-chrome-stable
snap install --classic code

sh setup/customize-desktop.sh
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome/gnome-terminal-profiles.dconf

sh setup/docker-install.sh
sh setup/docker-post-install.sh

sh setup/hadotlint-install.sh

apt install zsh

apt update -y && apt upgrade -y
