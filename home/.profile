export EDITOR="vim"
export VISUAL="vim"
export GIT_EDITOR=$EDITOR
export HOMEBREW_EDITOR=$VISUAL
export PAGER="less"
export LESS="-R"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

USER_MEM_ARGS="-Xms256m -Xmx512m -XX:MaxPermSize=128m -Dcom.sun.management.jmxremote=true"
export USER_MEM_ARGS

MAVEN_OPTS="-XX:MaxPermSize=128m -Xmx512M"
export MAVEN_OPTS

export CFLAGS="-g -Os"
export MAKEFLAGS="-j5"

export PARALLEL_TEST_PROCESSORS=5
export CC="/usr/bin/gcc" # default to using clang to compile stuff

if [ -f $HOME/.profile_private ]; then
  . $HOME/.profile_private
fi

alias ls="ls -G"
alias la="ls -alhG"
alias ll="ls -lhG"
alias sl="ls"
alias sd="say all done"
alias heroku-supported-rubies="curl https://s3.amazonaws.com/heroku-buildpack-ruby/ruby_versions.yml"
alias docker-env="eval \"\$(docker-machine env default)\""
alias ppspec="bin/rake parallel:prepare; bin/rake parallel:spec; say all done"
alias pspec="bin/rake parallel:spec; say all done"

export COMMAND_MODE=unix2003

export GRAILS_OPTS="-server -Xmx512M -XX:MaxPermSize=256m -Dfile.encoding=UTF-8 -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

export LC_ALL=en_US.UTF-8

PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"

### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

# Homebrew install npm
PATH="/usr/local/share/npm/bin:$PATH"

export GOPATH=$HOME/dev/go
PATH=$PATH:$(go env GOPATH)/bin

# added by travis gem
# source /Users/mcampbell/.travis/travis.sh

export RBENV_ROOT=/usr/local/var/rbenv
#export RUBY_BUILD_CACHE_PATH="$(rbenv root)/cache"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#source /usr/local/share/chruby/chruby.sh
#source /usr/local/share/chruby/auto.sh

#RUBIES=(
  #/usr/local/var/rbenv/versions/*
#)

#PATH=".bundle/bin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="$PATH:/Applications/VirtualBox.app/Contents/MacOS"
export PATH

#eval `keychain --eval --agents ssh --inherit any id_rsa`

# added by Snowflake SnowSQL installer v1.0
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

export AWS_PAGER=""
