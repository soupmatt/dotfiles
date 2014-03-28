# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="soupmatt"

export JAVA_HOME=$(/usr/libexec/java_home)

export TORQUEBOX_HOME=$HOME/dev/torquebox/current
export JBOSS_HOME=$TORQUEBOX_HOME/jboss
#export JRUBY_HOME=$TORQUEBOX_HOME/jruby

USER_MEM_ARGS="-Xms256m -Xmx512m -XX:MaxPermSize=128m -Dcom.sun.management.jmxremote=true"
export USER_MEM_ARGS

MAVEN_OPTS="-XX:MaxPermSize=128m -Xmx512M"
export MAVEN_OPTS

export CFLAGS="-g -Os"
export MAKEFLAGS="-j5"

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
plugins=(brew git heroku knife osx powder rake soupmatt)

source $ZSH/oh-my-zsh.sh

add-zsh-hook -d preexec omz_termsupport_preexec

export EDITOR="vim"
export VISUAL="vim"
export GIT_EDITOR=$EDITOR
export HOMEBREW_EDITOR=$VISUAL
export PAGER="vimpager"
#alias less=$PAGER
#alias zless=$PAGER
export LESS="-R"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls="ls -G"
alias la="ls -alhG"
alias ll="ls -lhG"
alias sl="ls"
alias sd="say all done"
alias heroku-supported-rubies="curl https://s3.amazonaws.com/heroku-buildpack-ruby/ruby_versions.yml"
alias tjruby="$JRUBY_HOME/bin/jruby"
alias knife="nocorrect knife"
alias guard="nocorrect guard"
alias rbenv="nocorrect rbenv"
alias relish="nocorrect relish"

PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"

export LC_ALL=en_US.UTF-8

keychain -q

PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#source ~/.rvm/scripts/rvm

PATH=".bundle/bin:$PATH"
PATH="$HOME/bin:$PATH"

### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

# Homebrew install npm
PATH="/usr/local/share/npm/bin:$PATH"

export PATH

# added by travis gem
source /Users/mcampbell/.travis/travis.sh
