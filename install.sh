#!/bin/bash
set -eo pipefail

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install all available updates
sudo softwareupdate -i --verbose

# Install Rosetta
sudo softwareupdate --install-rosetta

# Install and enable Command Line Tools
xcode-select --install
sudo xcode-select --switch /Library/Developer/CommandLineTools

# Create project folder (if it doesn't exist)
mkdir -p ~/git/work

# Create vim swap file directories
rm -rf ~/.vim
mkdir ~/.vim
touch ~/.vim/backup
touch ~/.vim/swap

# Use symbolic links for dotfiles
bash ./symlinks.sh

# Apply system preferences
bash ./macos.sh

# Install Homebrew and apps
bash ./brew.sh

# Install default npm packages
bash ./npm.sh

# Do other stuff
bash ./misc.sh

echo "Done, enjoy!"
