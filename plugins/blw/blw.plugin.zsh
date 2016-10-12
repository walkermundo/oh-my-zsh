if [[ ${TERM} != wy* ]]
then
	if ( tput -T xterm-256color colors >/dev/null 2>&1 )
	then
		export TERM=xterm-256color
	elif ( tput -T xterm-color colors >/dev/null 2>&1 )
	then
		export TERM=xterm-color
	else
		export TERM=xterm
	fi
fi

[[ ${CFLAGS} != *"-g"* ]] && export CFLAGS="${CFLAGS} -g"

source $ZSH/plugins/blw/macos.zsh
source $ZSH/plugins/blw/linux.zsh
source $ZSH/plugins/blw/ubuntu.zsh

[[ -s "${HOME}/.hostrc" ]] && source "${HOME}/.hostrc"

export DOTNET_CLI_TELEMETRY_OPTOUT=1

alias rm='rm -i'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias grep='grep --color'

if [[ $(uname) != "Darwin" ]]
then
	alias ls='ls --color'
fi

if [[ -f "${HOME}/.ssh/good_hosts" ]]
then
	cp "${HOME}/.ssh/good_hosts" "${HOME}/.ssh/known_hosts"
fi

set -o vi

