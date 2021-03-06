source ~/.bash_aliases

#############################################################################

export PS1="\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[01;33m\]\w\[\e[m\] \[\e[35;40m\]\\$\[\e[m\] "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

umask 022

#############################################################################

alias ls='ls -GFh'
alias ll='ls -GHh -la'
alias ..='cd ..'
alias ...='cd ../..'

#############################################################################

export EDITOR="nano"

export HISTFILESIZE=99999999
export HISTSIZE=99999999
export HISTCONTROL="ignoreboth"

#############################################################################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
