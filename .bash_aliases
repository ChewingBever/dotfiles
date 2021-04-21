# General
alias 'c=clear'
alias 'e=$EDITOR'
alias 'ec=$EDITOR ~/.bashrc'
alias 'sc=source ~/.bashrc'

# Beautiful ls
alias ls='lsd --color=auto'
alias ll='lsd --color=auto --long --almost-all'

# Docker & docker-compose
alias d=docker
alias dc=docker-compose
alias dcu='docker-compose up --detach --build && docker-compose logs --follow'
alias dcb='docker-compose build'
alias dcd='docker-compose down'
alias dcl='docker-compose logs'

# Dotfile management
alias dots="git --git-dir='$HOME/.cfg' --work-tree='$HOME'"
