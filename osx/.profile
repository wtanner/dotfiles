stty -ixon
set -o vi
PATH=$PATH:~/bin

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="1"

source ~/bin/git-prompt.sh
PS1='\h \e[0;32m\w\e[m\e[1;31m$(__git_ps1 " (%s)")\e[m\$ '
