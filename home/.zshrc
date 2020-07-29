if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="soupmatt"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(alias-finder aws brew direnv docker docker-compose gem git-escape-magic knife osx powder redis-cli rake rake-fast soupmatt terraform)

source $ZSH/oh-my-zsh.sh

add-zsh-hook -d preexec omz_termsupport_preexec

alias knife="nocorrect knife"
alias guard="nocorrect guard"
alias rbenv="nocorrect rbenv"
alias relish="nocorrect relish"
alias prune="git branch -l --merged | grep -v master | xargs -n 1 git branch -d"

export RAMDISK=$HOME/ramdisk
export KNIFE_RELATIVE_PATH=cookbooks

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

