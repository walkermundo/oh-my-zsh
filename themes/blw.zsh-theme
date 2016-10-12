local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

if [[ -z "$TAG" ]]
then
	PROMPT=$'${ret_status} %F{154}%m %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)%{$reset_color%}\n%F{154}%#%{$reset_color%} '
else
	PROMPT=$'${ret_status} %F{154}%m %{$fg[cyan]%}%c%{$reset_color%} %{$fg[green]%}$TAG $(git_prompt_info)%{$reset_color%}\n%F{154}%#%{$reset_color%} '
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%F{39}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{39}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{39})"
