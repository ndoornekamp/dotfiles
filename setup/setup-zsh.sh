#!/bin/sh
apt install zsh -y
apt install fzf -y

chsh -s $(which zsh)  # Make zsh default terminal

# Install zsh configuration
ln --symbolic --force $HOME/dotfiles/zsh/zshrc $HOME/.zshrc
