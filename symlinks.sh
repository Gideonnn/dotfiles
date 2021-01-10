# Git conditional include for multiple accounts (work/personal)
ln -s ~/git/dotfiles/.gitconfig ~/.gitconfig

# Global .gitignore
ln -s ~/git/dotfiles/.gitignore ~/.gitignore

# Ssh config
rm -f ~/.ssh/config
ln -s ~/git/dotfiles/.ssh-config ~/.ssh/config

# Vim
ln -s ~/git/dotfiles/.vimrc ~/.vimrc

# Zsh
rm ~/.zshrc
ln -s ~/git/dotfiles/.zshrc ~/.zshrc

# Hammerspoon
rm -rf ~/.hammerspoon
ln -s ~/git/dotfiles/.hammerspoon ~/.hammerspoon