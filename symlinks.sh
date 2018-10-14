# Git conditional include for multiple accounts (work/personal)
ln -s ~/git/dotfiles/.gitconfig ~/.gitconfig

# Global .gitignore
ln -s ~/git/dotfiles/.gitignore ~/.gitignore

# Ssh config
rm -f ~/.ssh/config
ln -s ~/git/dotfiles/.ssh-config ~/.ssh/config
