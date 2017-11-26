#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install all available updates
sudo softwareupdate -iva

# Install Xcode command line tools
xcode-select --install

# Install Hombrew and apps
source ./brew.sh

# Set MacOS preferences
source ./macos.sh

echo "Done, enjoy!"
