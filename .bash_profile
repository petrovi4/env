if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

source ~/.bash_aliases
source ~/.bash_aliases_fm
source ~/.bash_aliases_if
source ~/.bash_aliases_mp

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
