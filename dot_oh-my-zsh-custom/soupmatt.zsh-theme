# ZSH Theme

autoload -U add-zsh-hook

# PROMPT=$'%{$fg[green]%}%* %{$fg_bold[cyan]%}%~%{$reset_color%}%{$fg[blue]%}$(git_prompt_info)$(git_prompt_short_sha) %{$fg[red]%}$(chruby_prompt_info)%{$reset_color%}\
# # if type rbenv &>/dev/null; then
# #   PROMPT=$'%{$fg[green]%}%* %{$fg_bold[cyan]%}%~%{$reset_color%}%{$fg[blue]%}$(git_prompt_info)$(git_prompt_short_sha) %{$fg[red]%}$(rbenv version-name)%{$reset_color%}\
# # %{$fg_bold[red]%}➜ %{$reset_color%}'
# else
  PROMPT=$'%{$fg[green]%}%* %{$fg_bold[cyan]%}%~%{$reset_color%}%{$fg[blue]%}$(git_prompt_info)$(git_prompt_short_sha)%{$reset_color%}\
%{$fg_bold[red]%}➜ %{$reset_color%}'
# fi

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg[blue]%}"
