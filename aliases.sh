# Misc
ls='ls --color=tty'
grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
ip='echo "Local IP: $(ipconfig getifaddr en0)" && echo "Public IP: $(curl -s https://ipinfo.io/ip)"'


# Navigation aliasses
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias dirs='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# Docker
alias d="docker"
alias dr="docker run"
alias ds="docker stop"
alias drm="docker rmi"

# Docker compose
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcd="docker-compose down"

# Git
alias gs="git status"
alias gl="git log"
alias ga="git add"
alias gd="setopt local_options noglob; git diff -- ':!package-lock.json' ':!yarn.lock'"
alias gdc="git diff --cached -- ':!package-lock.json' ':!yarn.lock'"
alias gaa="git add -A"
alias gal="git add ."
alias gall="git add ."
alias gca="git commit -a"
alias gc="git commit -m"
alias gcam="git commit --amend --no-edit"
alias gp="git push"
alias gplease="git push --force-with-lease"
alias go="git push -u origin"
