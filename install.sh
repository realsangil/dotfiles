#!/bin/zsh

echo 'Install Homebrew'
brew bundle

echo "Create link '$(pwd)/.config' to '${HOME}/.config'"
ln -s $(pwd)/.config/* $HOME/.config

echo "Create link '$(pwd)/.ideavimrc' to '${HOME}/.ideavimrc"
ln -s $(pwd)/.ideavimrc $HOME/.ideavimrc

echo "Create link '$(pwd)/.tmux.conf' to '${HOME}/.tmux.conf'"
ln -s $(pwd)/.tmux.conf $HOME/.tmux.conf

echo "Create link '$(pwd)/.vimrc' to '${HOME}/.vimrc"
ln -s $(pwd)/.vimrc $HOME/.vimrc

echo "Create link '$(pwd)/.hammerspoon' to '${HOME}/.hammerspoon"
ln -s $(pwd)/.hammerspoon $HOME/.hammerspoon

echo "Create link '$(pwd)/.gitconfig' to '${HOME}/.gitconfig'"
ln -s $(pwd)/.gitconfig $HOME/.gitconfig