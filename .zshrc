# Path to your oh-my-zsh installation.
export ZSH="/Users/gideon/.oh-my-zsh"

ZSH_THEME=""

DISABLE_UPDATE_PROMPT="true"

plugins=(
  brew
  colored-man-pages
  colorize
  common-aliases
  cp
  git
  node
  npm
  sudo
  yarn
  z
)

# Fix slow pasting. (source: https://stackoverflow.com/questions/25614613)
DISABLE_MAGIC_FUNCTIONS=true

source $ZSH/oh-my-zsh.sh

#
# Custom settings
#

# Brew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Coreutil's bin folder
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Gnu-sed's bin folder
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Python stuff
export PATH="/Users/gideon/Library/Python/2.7/bin:$PATH"

# Custom bin files
export PATH="/Users/gideon/git/dotfiles/bin:$PATH"

# Nvm settings
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Load aliasses
source ~/git/dotfiles/aliases.sh
