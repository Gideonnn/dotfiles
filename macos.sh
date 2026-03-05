#!/bin/bash
set -eo pipefail

# Ask for the administrator password upfront.
sudo -v

# Set sleep delays (in minutes)
sudo pmset -a displaysleep 0
sudo pmset -a sleep 0
sudo pmset -a disksleep 0

# Remove default public folder
sudo rm -rf ~/Public

# Disable the sound effects on boot (Apple Silicon compatible)
sudo nvram StartupMute=%01

# Disable the power chime (charger plug in sound)
defaults write com.apple.PowerChime ChimeOnAllAdapters -bool false
killall PowerChime 2>/dev/null || true

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Stop iTerm from displaying 'Last login: <date>'
touch ~/.hushlogin