alias ll="ls -l"
alias la="ls -la"
alias tmux="tmux -2"

export TERM=screen-256color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=$PATH:~/bin

# Go vendoring
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GO15VENDOREXPERIMENT=1
