# General
alias 'clear=echo "No more clear for you"'
alias 'nvim=echo "Use vim!"'
alias 'vim=command nvim'
# alias 'e=$EDITOR'
alias 'ec=$EDITOR ~/.bashrc'
alias 'sc=source ~/.bashrc'

# Dory can speak to whales
alias 'whales=sudo du -sch * | sort -hk1'
alias 'dory=sudo du -sch * | sort -hk1'

# Beautiful ls
alias ls='lsd --color=auto --group-dirs=first'
alias ll='lsd --color=auto --long --almost-all --group-dirs=first'

# Docker & docker-compose
alias d=docker
alias dc=docker-compose
alias dcu='docker-compose up --detach --build && docker-compose logs --follow'
alias dcb='docker-compose build'
alias dcd='docker-compose down'
alias dcl='docker-compose logs'

# Dotfile management
alias dots="git --git-dir='$HOME/.cfg' --work-tree='$HOME'"

# Add my ssh identify file to the ssh-agent
alias ssha='eval $(ssh-agent) && ssh-add'
