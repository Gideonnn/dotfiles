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

# Yarn
brew install yarn

# Utils
brew install --cask alfred
brew install --cask iterm2
brew install --cask imageoptim
brew install --cask disk-inventory-x

# Messaging
brew install --cask telegram
brew install --cask whatsapp
brew install --cask slack

# Development
brew install --cask visual-studio-code
brew install --cask insomnia-designer
brew install --cask docker

# Browsers
brew install --cask google-chrome
brew install --cask firefox

# Misc
brew install --cask dropbox
brew install --cask spotify

# Install Kubernetes context switcher
#brew tap blendle/blendle
#brew install kns

# Nerd fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew untap homebrew/cask-fonts

# Remove outdated versions from the cellar.
brew cleanup
