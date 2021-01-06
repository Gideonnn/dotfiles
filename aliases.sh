# Navigation aliasses
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

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
alias gd="git diff"
alias gdc="git diff --cached"
alias gaa="git add -A"
alias gal="git add ."
alias gall="git add ."
alias gca="git commit -a"
alias gc="git commit -m"
alias gcam="git commit --amend --no-edit"
alias gp="git push"
alias gplease="git push --force-with-lease"
alias go="git push -u origin"

# Kubernetes
alias k='kubectl'
alias kg='kubectl get'
alias kgpo='kubectl get pod'
alias krm='kubectl delete'

# Google Cloud
alias g="gcloud"
alias gg="gsutil"

# Terraform
alias t="terraform"
alias ti="terraform init"
alias tp="terraform plan"
alias ta="terraform apply"