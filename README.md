## Installation
```
# Install Homebrew
usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Clone this repo
git clone git@github.com:Gideonnn/dotfiles.git ~/git/dotfiles

# Run install.sh in root dir
source install.sh
```

## Post installation

### Add ssh key to GitHub

# Generate a new ssh key
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Start the ssh-agent in the background
eval "$(ssh-agent -s)"

# Add private key to ssh-agent
ssh-add -K ~/.ssh/id_rsa

```
# Copy public key to clipboard
pbcopy < ~/.ssh/id_rsa.pub
```

Go to https://github.com/settings/keys and add the key
