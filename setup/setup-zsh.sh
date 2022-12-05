#!/bin/sh
apt install zsh -y

chsh -s $(which zsh)  # Make zsh default terminal

# Install zsh configuration
ln --symbolic --force $HOME/dotfiles/zsh/zshrc $HOME/.zshrc
ln --symbolic --force $HOME/dotfiles/zsh/zshenv $HOME/.zshenv
