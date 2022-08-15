alias ls="ls --color"

BOLD="\033[1m"
NORMAL="\033[0m"

DEFAULT="\033[39m"
LRED="\033[91m"
LYELLOW="\033[93m"
LBLUE="\033[94m"

get_git_branch() {
	git branch --show-current 2>/dev/null | awk "{print \" (${LYELLOW}\"\$1\"${DEFAULT})\";}"
}

export PS1="${BOLD}[${LRED}\u${LYELLOW}@${LBLUE}\h${DEFAULT}]\$ ${LBLUE}\W${DEFAULT}\$(get_git_branch)${NORMAL} "
