#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install all available updates
sudo softwareupdate -i --verbose

# Install and enable Command Line Tools
xcode-select --install
sudo xcode-select --switch /Library/Developer/CommandLineTools

# Create project folders
mkdir -p ~/git/work

# Create vim swap file directories
mkdir ~/.vim
touch ~/.vim/backup
touch ~/.vim/swap

# Use symbolic links for dotfiles
source ./symlinks.sh

# Apply system preferences
source ./macos.sh

# Install Hombrew and apps
source ./brew.sh

# Install default npm packages
source ./npm.sh

# Do other stuff
source ./misc.sh

echo "Done, enjoy!"
