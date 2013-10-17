

### Start Piperita Theme ###
# Theme by Jacob Tomlinson
# https://github.com/killfall/terminal-piperita

# Aliases to make ls easier to use in different modes, taken from Red Hat
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
export PS1="\`if [[ $(id -u) == 0 ]] ; then echo -e \[\033[31m\]\u; else echo -e \[\033[36m\]\u; fi\`\[\033[m\]@\[\033[32m\]\h\[\033[m\]:\[\033[33;1m\]\W\`if [ \$? = 0 ]; then echo -e '\[\e[01;m\]\$'; else echo -e '\[\e[31m\]\$'; fi\` \[\033[m\]"
export CLICOLOR=1

### End Piperita Theme ###
