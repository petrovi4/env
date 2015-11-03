#!/bin/bash

alias gl='git log'

alias gs='git status'

alias gA='git add -A'

alias ga='git add '

alias gc='git commit -m'

alias gp='git push'

alias gpl='git pull'

alias gb='git branch'

alias gbl='git branch -l'

alias gch='git checkout'
alias gchm='git checkout master'
alias gchd='git checkout dev'

alias gm='git merge -m "Auto-Merge"'

alias gd='git diff'

#alias gr='git checkout dev && git pull && git checkout master && git pull && git merge dev && git push && git checkout dev'

function gfFunc {
	gA
	if [ -z $1 ]
		then echo gc "Fast fix"
		else echo gc $1
	fi
	gp
}
alias gf=gfFunc

alias tw='tail -f -n 50 /var/log/mainpeople_app-work.log'
alias te='tail -f -n 50 /var/log/mainpeople_app-error.log'

alias hp='git push heroku master'
alias hlog='heroku logs --tail'
alias hi='heroku apps:info'
alias hpi='heroku pg:info'
alias hl='heroku local'
