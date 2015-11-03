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

gf = function(){
	#gA
	if [ -z ${1+"Fast fix"} ];
		then echo "var is unset";
		else echo "var is set to '$var'"; 
	fi
	echo "var is '$var'";
}
alias gf=gf
alias gf1='gA && gc "Fast fix" && gp'

alias tw='tail -f -n 50 /var/log/mainpeople_app-work.log'
alias te='tail -f -n 50 /var/log/mainpeople_app-error.log'

alias hp='git push heroku master'
alias hlog='heroku logs --tail'
alias hi='heroku apps:info'
alias hpi='heroku pg:info'
alias hl='heroku local'

