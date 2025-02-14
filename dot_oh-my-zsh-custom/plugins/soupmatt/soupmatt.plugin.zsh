cs() { cd ~/src/github.com/Shopify/$1; }
_cs() { _files -W ~/src/github.com/Shopify -/;  }
compdef _cv cv

cg() { cd ~/src/github.com/$1; }
_cg() { _files -W ~/src/github.com -/;  }
compdef _co co
