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

# Install GNU core utilities (those that come with OS X are outdated).
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install `wget`
brew install wget

# Install fzf
brew install fzf

# Install more recent versions of some OS X tools.
brew install vim
brew install grep
brew install openssh

# Install Git
brew install git
brew install git-extras

# Install nvm
brew install nvm && mkdir ~/.nvm

# Install Cask
brew tap caskroom/versions

# Core casks
brew cask install alfred
brew cask install iterm2
brew cask install imageoptim

# Messaging casks
brew cask install yakyak
brew cask install telegram
brew cask install whatsapp

# Development tool casks
brew cask install visual-studio-code
brew cask install insomniaq

# Misc casks
brew cask install google-chrome
brew cask install firefox
brew cask install vivaldi
brew cask install slack
brew cask install dropbox
brew cask install spotify

# Install Docker
brew cask install docker

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar.
brew cleanup
