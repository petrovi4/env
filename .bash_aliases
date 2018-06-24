#!/bin/bash

alias e=exit

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
alias пзд=gpl

alias gb='git branch'
alias пи=gb

alias gbl='git branch -l'
alias пид=gbl

alias gch='git checkout'
alias пср=gch

alias gchm='git checkout master'
alias gchd='git checkout dev'

alias gm='git merge -m "Auto-Merge"'
alias gmdt='git merge dev --strategy-option theirs'

alias gd='git diff'



#### FAST FIX ####

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



#### RELEASE ####

function startProcessFolder(){
	printf "\--------------------- Now %s %s\n" $1 ${PWD##*/}
}

function doneProcessFolder(){
        printf "\--------------------- Done %s\n\n" ${PWD##*/}
}

function gr() {
	startProcessFolder "release"

	git checkout dev
	git pull
	git checkout master
	git pull
	git merge dev
	git push
	git checkout dev

	doneProcessFolder
}
