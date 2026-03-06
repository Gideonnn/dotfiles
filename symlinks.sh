#!/bin/bash
set -eo pipefail

# Git conditional include for multiple accounts (work/personal)
rm -f ~/.gitconfig
ln -s ~/git/dotfiles/.gitconfig ~/.gitconfig

# Global .gitignore
rm -f ~/.gitignore
ln -s ~/git/dotfiles/.gitignore ~/.gitignore

# Ssh config
mkdir -p ~/.ssh
rm -f ~/.ssh/config
ln -s ~/git/dotfiles/ssh-config ~/.ssh/config

# Vim
rm -f ~/.vimrc
ln -s ~/git/dotfiles/.vimrc ~/.vimrc

# Zsh
rm ~/.zshrc
ln -s ~/git/dotfiles/.zshrc ~/.zshrc

# Hammerspoon
rm -rf ~/.hammerspoon
ln -s ~/git/dotfiles/.hammerspoon ~/.hammerspoon

# Warp
rm -rf ~/.warp
ln -s ~/git/dotfiles/.warp ~/.warp

# Lazygit
mkdir -p ~/.config
rm -rf ~/.config/lazygit
ln -s ~/git/dotfiles/.config/lazygit ~/.config/lazygit

# Karabiner Elements
mkdir -p ~/.config
rm -rf ~/.config/karabiner
ln -s ~/git/dotfiles/.config/karabiner ~/.config/karabiner

# Claude Code
mkdir -p ~/.claude
rm -rf ~/.claude/commands
ln -s ~/git/dotfiles/.claude/commands ~/.claude/commands
