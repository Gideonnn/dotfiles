#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install all available updates
sudo softwareupdate -i --verbose

# Create project folders
mkdir -p ~/git/work

# Use symbolic links for dotfiles
source ./symlinks.sh

# Install Hombrew and apps
source ./brew.sh

# Set Vim preferences
source ./vim.sh

# Set MacOS preferences
source ./macos.sh

echo "Done, enjoy!"
