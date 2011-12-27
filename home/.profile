if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

#export rvm_path="$HOME/.rvm"

PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
export PS1

if [ -f $HOME/.nvm/nvm.sh ]; then
  . $HOME/.nvm/nvm.sh
fi

export EDITOR="vim"
export VISUAL="mvim"
export GIT_EDITOR=$EDITOR
export HOMEBREW_EDITOR=$VISUAL
export PAGER="vimpager"
export LESS="-R"

USER_MEM_ARGS="-Xms256m -Xmx512m -XX:MaxPermSize=128m -Dcom.sun.management.jmxremote=true"
export USER_MEM_ARGS

if [ -f .profile_private ]; then
  . .profile_private
fi

alias ls="ls -G"
alias la="ls -alhG"
alias ll="ls -lhG"
alias sl="ls"
alias sd="say all done"
alias be="bundle exec"
alias pairtmux="tmux -S /tmp/tmux/pair"

export COMMAND_MODE=unix2003

export GRAILS_OPTS="-server -Xmx512M -XX:MaxPermSize=256m -Dfile.encoding=UTF-8 -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

export PATH=$HOME/bin:/usr/local/mysql/bin:$PATH

export LC_ALL=en_US.UTF-8

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

if [ -f $rvm_path/contrib/ps1_functions ]; then
  . $rvm_path/contrib/ps1_functions
  ps1_set --notime
fi

if [ -f $HOME/.ps1_functions ]; then
  . $HOME/.ps1_functions
  ps1_set --notime
fi

if [ -x $HOME/.rbenv/bin/rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if [ -f $HOME/dev/opensource/bundler-exec/bundler-exec.sh ]; then
  source $HOME/dev/opensource/bundler-exec/bundler-exec.sh
fi
