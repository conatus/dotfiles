#!/bin/sh

set -e

# Install ZSH
chsh -s /bin/zsh
ln -s `pwd`/zshrc ~/.zshrc
ln -s `pwd`/zsh ~/.zsh

# Install Vim
mkdir -p ~/bin/config
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/zsh ~/.vim

# Set Mac OS defaults we like.
./setup/osx

# # Install Homebrew.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# # Install Homebrew bundler.
brew tap Homebrew/brewdler

# Ensure we aren't installing everything somewhere a bit wacky.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# # Install everything else.
brew brewdle

brew cleanup

echo 'Done'

