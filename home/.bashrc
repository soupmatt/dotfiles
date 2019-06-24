if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# added by travis gem
[ -f /Users/matt.campbell/.travis/travis.sh ] && source /Users/matt.campbell/.travis/travis.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/matt.campbell/.sdkman"
[[ -s "/Users/matt.campbell/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/matt.campbell/.sdkman/bin/sdkman-init.sh"
