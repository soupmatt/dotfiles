# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="soupmatt"

fpath=(/usr/local/share/zsh/site-functions $fpath)

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
plugins=(brew gem git heroku knife osx powder redis-cli rails rake rake-fast powder postgres soupmatt)

source $ZSH/oh-my-zsh.sh

add-zsh-hook -d preexec omz_termsupport_preexec

alias knife="nocorrect knife"
alias guard="nocorrect guard"
alias rbenv="nocorrect rbenv"
alias relish="nocorrect relish"
alias prune="git branch -l --merged | grep -v master | xargs -n 1 git branch -d"

eval "$(direnv hook zsh)"

# chruby $(cat $HOME/.ruby-version)

export RAMDISK=$HOME/ramdisk

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# added by travis gem
[ -f /Users/matt.campbell/.travis/travis.sh ] && source /Users/matt.campbell/.travis/travis.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/matt.campbell/.sdkman"
[[ -s "/Users/matt.campbell/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/matt.campbell/.sdkman/bin/sdkman-init.sh"
