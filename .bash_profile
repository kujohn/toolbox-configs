alias ll="ls -l"
alias la="ls -la"
alias tmux="tmux -2"

export TERM=screen-256color
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO15VENDOREXPERIMENT=1
export PATH="/opt/local/bin:/opt/local/sbin:$HOME/bin:$GOPATH/bin:$PATH"

# Docker
export DOCKER_HOST=tcp://127.0.0.1:4243/
eval "$(docker-machine env default)"


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
