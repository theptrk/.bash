# vim to shortcuts
alias bp="vim ~/.bash_profile"
alias bpr="source ~/.bash_profile"
alias vrc="vim ~/.vimrc"

# terminal
alias cp='cp -iv'                            # Preferred 'cp' implementation
alias mv='mv -iv'                            # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                      # Preferred 'mkdir' implementation
alias ls="ls -FGlA1"
alias l="ls"
alias rm="rm -i"    			     # ensure every file is confirmed
cd() { builtin cd "$@"; l; }                 # Always list directory contents upon 'cd'
alias ..='cd ../'                            # Go back 1 directory level
alias ...='cd ../../'                        # Go back 2 directory levels
alias f='open -a Finder ./'                  # f:            Opens current directory in MacOS Finder
alias c='clear'                              # c:            Clear terminal display
mcd () { mkdir -p "$1" && cd "$1"; }         # mcd:          Makes new Dir and jumps inside
alias teeout='tee ~/Desktop/terminalOut.txt' # teeout:       Pipe content to file on MacOS Desktop

# git
alias gs="git status"
alias gr="git rebase"
alias ga="git add"
alias gd="git diff"
alias gcm="git commit -m"
alias gdc="git diff --cached"
alias gpo="git push origin"
alias goto="git checkout"

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

# local changes here
if [ -f ~/.bash_profile_local ]; then
	source ~/.bash_profile_local
fi
