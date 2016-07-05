#!/bin/bash

alias pgStart='pg_ctl start -D ~/Projects/postgres/'
alias pgStop='pg_ctl stop -m fast -D ~/Projects/postgres/'

alias redis='redis-server /usr/local/etc/redis.conf'

alias gl='git log'
alias пд=gl

alias gs='git status'
alias пы=gs

alias gA='git add -A'
alias пФ=gA

alias ga='git add '
alias пф=ga

alias gc='git commit -m'
alias пс=gc

alias gp='git push'
alias пз=gp

alias gpl='git pull'
alias gplb='git pull && npm run build'
alias пзд=gplb
alias пзди=gplb

alias gb='git branch'
alias пи=gb

alias gbl='git branch -l'
alias пид=gbl

alias gch='git checkout'
alias пср=gch

alias gchm='git checkout master'
alias gchd='git checkout dev'

alias gm='git merge -m "Auto-Merge"'

alias gd='git diff'

#alias gr='git checkout dev && git pull && git checkout master && git pull && git merge dev && git push && git checkout dev'

function gfFunc {
	gA
	if [ -z $1 ]; then
		comLine="/usr/local/bin/git commit -m 'Fast fix'"
	else 
		comLine="/usr/local/bin/git commit -m '$@'"
	fi
	eval $comLine
	gp
}
alias gf=gfFunc
alias па=gf

