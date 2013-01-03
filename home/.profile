if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
export PS1

if [ -f $HOME/.nvm/nvm.sh ]; then
  . $HOME/.nvm/nvm.sh
fi

export EDITOR="vim"
export VISUAL="vim"
export GIT_EDITOR=$EDITOR
export HOMEBREW_EDITOR=$VISUAL
export PAGER="vimpager"
export LESS="-R"

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

if [ -f .profile_private ]; then
  . .profile_private
fi

alias ls="ls -G"
alias la="ls -alhG"
alias ll="ls -lhG"
alias sl="ls"
alias sd="say all done"
eval $(hub alias -s bash)
alias heroku-supported-rubies="curl https://s3.amazonaws.com/heroku-buildpack-ruby/ruby_versions.yml"
alias tjruby="$JRUBY_HOME/bin/jruby"

export COMMAND_MODE=unix2003

export GRAILS_OPTS="-server -Xmx512M -XX:MaxPermSize=256m -Dfile.encoding=UTF-8 -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

export PATH="/usr/local/mysql/bin:$PATH"

#make it so we have either rbenv or rvm loaded, but not both
NO_RUBY_PATH=${NO_RUBY_PATH:=$PATH}
export NO_RUBY_PATH

export LC_ALL=en_US.UTF-8

export USE_RVM=true

if [ "x$USE_RVM" = "xtrue" ]; then
  export rvm_path="$HOME/.rvm"
  export PATH=$NO_RUBY_PATH
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
  [[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
else
  if [ -x $HOME/.rbenv/bin/rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$NO_RUBY_PATH"
    eval "$(rbenv init -)"
  fi
fi
PATH=".bundle/safe/../bin:$PATH"
export PATH="$HOME/bin:$PATH"

if [ -f $HOME/.ps1_functions ]; then
  . $HOME/.ps1_functions
  ps1_set
fi

keychain -q
