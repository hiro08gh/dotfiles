# Editor
alias vs='code .'
alias vi='nvim'

# Directory 
alias work="cd $HOME/workspace/work"
alias app="cd $HOME/workspace/app"
alias oss="cd $HOME/workspace/oss"
alias dot="cd $HOME/dotfiles"

# Basic
alias c='clear'
alias m="mkdir"

# tmux
alias tmux="TERM=screen-256color-bce tmux"
alias t=tmux
alias tk=tmux kill-server

# Git
alias g='git'
alias gi='git init'
alias gp='git push'
alias gc='git commit -m'
alias ga='git add .'
alias gl='git log'
alias gst='git status'
alias gca='git commit -am'
alias gr='git fetch origin && git pull origin'
alias grs='git reset --hard HEAD'
alias gs='git stash'
alias gsl='git stash list'
alias gsc='git stash clear'
alias gs='git switch'
alias gsc='git switch -c'
alias gpo='git push -u origin'

# Docker
alias dl='docker ps -l -q'
alias db='docker build .'
alias di='docker images'
alias dr='docker run'
alias dc='docker-compose up'
alias dcd='docker-compose up -d'
alias ds='docker stop $(docker ps -a -q)'
alias dcd='docker rm $(docker ps -a -q)'
alias did='docker rmi $(docker images -q)'
alias dad='ds && dcd && did'

# tasks 
alias t='task'