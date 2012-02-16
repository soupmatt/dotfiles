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

USER_MEM_ARGS="-Xms256m -Xmx512m -XX:MaxPermSize=128m -Dcom.sun.management.jmxremote=true"
export USER_MEM_ARGS

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

export COMMAND_MODE=unix2003

export GRAILS_OPTS="-server -Xmx512M -XX:MaxPermSize=256m -Dfile.encoding=UTF-8 -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

export PATH=$HOME/bin:/usr/local/mysql/bin:$PATH

#make it so we have either rbenv or rvm loaded, but not both
NO_RUBY_PATH=${NO_RUBY_PATH:=$PATH}
export NO_RUBY_PATH

export LC_ALL=en_US.UTF-8

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

if [ -f $HOME/.ps1_functions ]; then
  . $HOME/.ps1_functions
  ps1_set
fi

keychain -q
