alias bp="vim ~/.bash_profile"
alias bpr="source ~/.bash_profile"
alias vrc="vim ~/.vimrc"

######
#
# 2010-09-08
# Change prompt to the following:
# [USER@HOST cwd] time
#
# PS1='\[\e[44;36m\][\u@\h \w] \t $\[\e[0m\] ' 
function prompt {
	local BLACK="\[\033[0;30m\]"
	local BLACKBOLD="\[\033[1;30m\]"
	local RED="\[\033[0;31m\]"
	local REDBOLD="\[\033[1;31m\]"
	local GREEN="\[\033[0;32m\]"
	local GREENBOLD="\[\033[1;32m\]"
	local YELLOW="\[\033[0;33m\]"
	local YELLOWBOLD="\[\033[1;33m\]"
	local BLUE="\[\033[0;34m\]"
	local BLUEBOLD="\[\033[1;34m\]"
	local PURPLE="\[\033[0;35m\]"
	local PURPLEBOLD="\[\033[1;35m\]"
	local CYAN="\[\033[0;36m\]"
	local CYANBOLD="\[\033[1;36m\]"
	local WHITE="\[\033[0;37m\]"
	local WHITEBOLD="\[\033[1;37m\]"
	local RESETCOLOR="\[\e[00m\]"

	export PS1="$BLUE\u $GREEN$ $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null) $RESETCOLOR"
}
prompt

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# terminal
alias ls="ls -a"
alias l="ls"
alias rm="rm -i"
# git
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gd="git diff"
alias gpo="git push origin"

# troubleshoot
# set bash as default if you installed zsh
# chsh -s /bin/bash
