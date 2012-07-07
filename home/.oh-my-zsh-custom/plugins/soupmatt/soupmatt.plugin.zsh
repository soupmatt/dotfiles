cv() { cd ~/dev/vibes/$1; }
_cv() { _files -W ~/dev/vibes -/;  }
compdef _cv cv

co() { cd ~/dev/opensource/$1; }
_co() { _files -W ~/dev/opensource -/;  }
compdef _co co
