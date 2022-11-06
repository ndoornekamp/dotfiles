set -e

sh update.sh

cp .bash_aliases ~/.bash_aliases

apt install git -y
apt install python3 python3-venv python3-pip -y

apt install chromium-browser -y
snap install --classic code

sh customize-desktop.sh

sh docker-install.sh
sh docker post-install.sh

sh update.sh
