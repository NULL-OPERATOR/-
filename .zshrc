gshuf -n 1 .welcome

export ZSH=/Users/ghost/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git z pip npm)

source $ZSH/oh-my-zsh.sh

alias gg="git add . && git commit -m"

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

export PATH="$PATH:$HOME/.rvm/bin"
