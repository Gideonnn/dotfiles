#!/bin/bash

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Homebrew is not installed. Please install it first"
  return;
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install more recent versions of some OS X tools.
brew install vim
brew install grep
brew install openssh
brew install wget

# Install Git
brew install git
brew install git-extras

# Install nvm
brew install nvm && mkdir ~/.nvm
nvm install node # latest version

# Command line tools
brew install ffmpeg
brew install trash-cli

# Messaging
brew install --cask telegram
brew install --cask whatsapp
brew install --cask slack
brew install --cask discord

# Development
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask warp
brew install jq

# Browsers
brew install --cask google-chrome
brew install --cask firefox
brew install --cask arc

# Gaming
brew install --cask whisky
brew install --cask steam

# Misc
brew install --cask raycast
brew install --cask spotify
brew install --cask imageoptim
brew install --cask disk-inventory-x
brew install --cask bitwarden
brew install --cask raspberry-pi-imager

# Keyboard
brew install --cask hyperkey
brew install --cask keymapp
brew install --cask macmediakeyforwarder

# Remove outdated versions from the cellar.
brew cleanup
