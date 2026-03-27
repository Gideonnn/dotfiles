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
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# Gnu-sed's bin folder
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

# Python (uv)
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
for dir in /opt/homebrew/lib/ruby/gems/*/bin(N); do
  export PATH="$dir:$PATH"
done

# Custom bin files
export PATH="/Users/gideon/git/dotfiles/bin:$PATH"

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Misc
export PATH="/Users/gideon/.local/bin:$PATH"

# NVM
export NVM_DIR=~/.nvm
[ -s "$(brew --prefix nvm)/nvm.sh" ] && source "$(brew --prefix nvm)/nvm.sh"

# Load aliasses
source ~/git/dotfiles/aliases.sh
