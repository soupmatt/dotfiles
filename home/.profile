export EDITOR="vim"
export VISUAL="vim"
export GIT_EDITOR=$EDITOR
export HOMEBREW_EDITOR=$VISUAL
export PAGER="vimpager"
export LESS="-R"

export JAVA_HOME=$(/usr/libexec/java_home)

USER_MEM_ARGS="-Xms256m -Xmx512m -XX:MaxPermSize=128m -Dcom.sun.management.jmxremote=true"
export USER_MEM_ARGS

MAVEN_OPTS="-XX:MaxPermSize=128m -Xmx512M"
export MAVEN_OPTS

export CFLAGS="-g -Os"
export MAKEFLAGS="-j5"

if [ -f $HOME/.profile_private ]; then
  . $HOME/.profile_private
fi

alias ls="ls -G"
alias la="ls -alhG"
alias ll="ls -lhG"
alias sl="ls"
alias sd="say all done"
alias heroku-supported-rubies="curl https://s3.amazonaws.com/heroku-buildpack-ruby/ruby_versions.yml"

export COMMAND_MODE=unix2003

export GRAILS_OPTS="-server -Xmx512M -XX:MaxPermSize=256m -Dfile.encoding=UTF-8 -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

export LC_ALL=en_US.UTF-8

PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"

### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

# Homebrew install npm
PATH="/usr/local/share/npm/bin:$PATH"

PATH=".bundle/safe/../bin:$PATH"
PATH="$HOME/bin:$PATH"
export PATH

# added by travis gem
source /Users/mcampbell/.travis/travis.sh

export RBENV_ROOT=/usr/local/var/rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

keychain -q
