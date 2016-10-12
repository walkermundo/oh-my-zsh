if [[ $(uname) == "Linux" ]]
then
	if [[ -d "$HOME/.dir_colors" ]]
	then
		eval "$(dircolors $HOME/.dir_colors)"
	fi
fi
