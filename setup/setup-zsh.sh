#!/bin/sh

chsh -s $(which zsh) nick  # Make zsh default terminal

# Install zsh configuration
ln --symbolic --force $HOME/dotfiles/zsh/zshrc $HOME/.zshrc
ln --symbolic --force $HOME/dotfiles/zsh/zshenv $HOME/.zshenv
