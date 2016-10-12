os=$(gawk -F '=' '/NAME/ {print $2}' /etc/os-release 2>/dev/null | tr -d '"')
if [[ "$os" == "Ubuntu" ]]
then
	export DIR_COLORS="${HOME}/.dir_colors"
	eval "$(dircolors)"
fi
