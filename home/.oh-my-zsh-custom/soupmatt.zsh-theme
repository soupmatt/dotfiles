# ZSH Theme
PROMPT=$'%{$fg[green]%}%* %{$fg_bold[green]%}%m%{$fg[cyan]%}:%~%{$reset_color%}%{$fg[blue]%}$(git_prompt_info)$(git_prompt_short_sha) %{$fg[red]%}<$(rvm current)>%{$reset_color%}\
%{$fg_bold[red]%}➜ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" git:(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg[blue]%}"
