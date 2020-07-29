if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# added by travis gem
[ -f /Users/matt.campbell/.travis/travis.sh ] && source /Users/matt.campbell/.travis/travis.sh

