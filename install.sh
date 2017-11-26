#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update the OS and Install Xcode Tools
echo "------------------------------"
echo "Updating OSX.  If this requires a restart, run the script again."

# Install all available updates
sudo softwareupdate -iva

echo "------------------------------"
echo "Installing Xcode Command Line Tools."

# Install Xcode command line tools
xcode-select --install

# Install Hombrew and apps
source ./brew.sh

# Set MacOS preferences
source ./macos.sh

echo "Done, enjoy!"
