## Installation
```
# Generate a new ssh key
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Start the ssh-agent in the background
eval "$(ssh-agent -s)"

# Add private key to ssh-agent
ssh-add -K ~/.ssh/id_rsa

# Copy public key to clipboard
pbcopy < ~/.ssh/id_rsa.pub

Go to [GitHub](https://github.com/settings/keys) and add the key to SSH keys

# Install Homebrew
usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Clone this repo
git clone git@github.com:Gideonnn/dotfiles.git ~/git/dotfiles

# Run install.sh in root dir
source install.sh
```

### Post install

## Oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

