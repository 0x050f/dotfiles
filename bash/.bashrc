export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export PATH="/usr/sbin/:$HOME/.local/bin:$PATH"
export SHELL="/bin/bash"

alias ls="ls --color=auto"

BOLD="\[\033[1m\]"
NORMAL="\[\033[0m\]"

DEFAULT="\[\033[39m\]"
LRED="\[\033[91m\]"
LYELLOW="\[\033[93m\]"
LBLUE="\[\033[94m\]"

get_git_branch() {
	git branch 2> /dev/null | tr -d '(' | tr -d ')' | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1="${BOLD}[${LRED}\u${LYELLOW}@${LBLUE}\h${DEFAULT}]\$ ${LBLUE}\W ${DEFAULT}\$(get_git_branch)${NORMAL}"
