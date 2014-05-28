. ~/.profile
. ~/.bashrc

PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
export PS1

if [ -f $HOME/.ps1_functions ]; then
  . $HOME/.ps1_functions
  ps1_set
fi
