# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

read -p "Press enter to continue"

# Install Homebrew Cask
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

read -p "Press enter to continue"

# Update Homebrew
brew update
brew upgrade

read -p "Press enter to continue"

# Install packages
brew_apps=(
  docker
  git
  magic-wormhole
  node
  tree
  vim
  wget
)

brew install "${brew_apps[@]}"

read -p "Press enter to continue"

# Instal cask packages
cask_apps=(
  alfred
  dropbox
  firefox
  google-chrome
  spotify
  virtualbox
  visual-studio-code
)

brew install "${cask_apps[@]}"

read -p "Press enter to continue"
