

### Start Piperita Theme ###
# Theme by Jacob Tomlinson
# https://github.com/killfall/terminal-piperita

# Aliases to make ls easier to use in different modes, taken from Red Hat EL 6
alias ls='ls -GFh'
alias ll="ls -ll"
alias la="ll -a"

# Set ls colors
export LSCOLORS=ExFxBxDxCxegedabagacad 

# Alias to set color in grep
alias grep="grep --color=auto"
         
# Environment variables to set prompt format and color 
export COLOR_BOLD="\[\e[1m\]"
export COLOR_DEFAULT="\[\e[0m\]"

# Test if user is root and set user color appropriately
if [[ $(id -u) == 0 ]]
then
    export PS1USERCOLOR="\[\033[31m\]"
else
    export PS1USERCOLOR="\[\033[36m\]"
fi

export PS1="$PS1USERCOLOR\u\[\033[m\]@\[\033[32m\]\h\[\033[m\]:\[\033[33;1m\]\W\`if [ \$? = 0 ]; then echo -e '\[\033[m\]\$'; else echo -e '\[\e[31m\]\$'; fi\` \[\033[m\]"

export CLICOLOR=1

### End Piperita Theme ###
