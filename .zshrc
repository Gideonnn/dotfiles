# Path to your oh-my-zsh installation.
export ZSH="/Users/gideon/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git node npm kubectl)

source $ZSH/oh-my-zsh.sh

#
# Custom settings
#

# Brews sbin folder
export PATH="/usr/local/sbin:$PATH"

# Coreutil's bin folder
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Gnu-sed's bin folder
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Python stuff
export PATH="/Users/gideon/Library/Python/2.7/bin:$PATH"

# Nvm settings
export NVM_DIR=~/.nvm

# iTerm settings
unsetopt inc_append_history
unsetopt share_history

# Load aliasses
source ~/git/dotfiles/aliases.sh

#
# Lazy load nvm
# source: https://gist.github.com/fl0w/07ce79bd44788f647deab307c94d6922
#

# Add every binary that requires nvm, npm or node to run to an array of node globals
NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")

# Lazy-loading nvm + npm on node globals call
load_nvm () {
  export NVM_DIR=~/.nvm
  [ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"
}

# Making node global trigger the lazy loading
for cmd in "${NODE_GLOBALS[@]}"; do
  eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
