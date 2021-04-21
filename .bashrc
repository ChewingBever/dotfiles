# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Limit max recursion depth
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100


# =====ENVIRONMENT VARIABLES=====
export EDITOR=nvim
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"


# =====FUNCTIONS=====
function print_status() {
    if [[ $1 -ne 0 ]]; then
        echo "$1 "
    fi
}


# =====PROMPT=====
PS1=" \e[1;31m\$(print_status \$?)\e[1;33m\w\e[m \n \e[1;36m>\e[m "


# =====EXTERNAL SCRIPTS=====
# My aliases
[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# Broot function
[[ -f "$HOME/.config/broot/launcher/bash/br" ]] && \
    source "$HOME/.config/broot/launcher/bash/br" 
