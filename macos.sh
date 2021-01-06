#!/bin/bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

COMPUTERNAME="Gideon's MacBook Pro"
COMPUTERNAME_SIMPLE="Gideons-MacBook-Pro"

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "$COMPUTERNAME"
sudo scutil --set HostName "$COMPUTERNAME"
sudo scutil --set LocalHostName "$COMPUTERNAME_SIMPLE"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$COMPUTERNAME"

# Set sleep delays (in minutes)
sudo pmset -a displaysleep 0
sudo pmset -a disksleep 0
sudo pmset -a sleep 0

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable the power chime (charger plug in sound)
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Stop iTunes from responding to the keyboard media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Stop iTerm from displaying 'Last login: <date>'
touch ~/.hushlogin