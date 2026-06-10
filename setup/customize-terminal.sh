sudo apt install dconf-cli -y

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome/gnome-terminal-profiles.dconf
