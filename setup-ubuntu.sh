set -e

apt update -y
apt upgrade -y

cp .bash_aliases ~/.bash_aliases

apt install git -y
apt install python3 python3-venv python3-pip -y

apt install chromium-browser -y
snap install --classic code

sh customize-desktop.sh

sh docker-install.sh
sh docker post-install.sh

apt update -y
apt upgrade -y
