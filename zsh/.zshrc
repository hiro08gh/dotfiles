export ZSH="/Users/hiro08/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

#zsh間でヒストリを共有
setopt share_history
setopt no_beep #beep音を無効にする
setopt print_eight_bit #日本語ファイル名を表示する
setopt autocd #ディレクトリ名でcd
setopt hist_ignore_all_dups #同じコマンドをヒストリに残さない
setopt correct #コマンドミスを修正

#vim
alias vi='nvim'
#alias nvi='nvim'

#alias
alias sodo='sudo '
alias tmux="TERM=screen-256color-bce tmux"
alias c='clear'
alias m="mkdir"
alias t=tmux
alias tk=tmux kill-server

#git
alias init='git init'
alias push='git push'
alias commit='git commit -m'
alias add='git add .'
alias log='git log'
alias st='git status'
alias gca='git commit -am'
alias reset='git reset --hard HEAD'

#docker
alias dl='docker ps -l -q'
alias db='docker build .'
alias di='docker images'
alias dr='docker run'
alias dc='docker-compose up'
alias dcd='docker-compose up -d'
alias dcd='docker rm $(docker ps -a -q)'
alias did='docker rmi $(docker images -q)'

# k8s
alias kgp='kubectl get pod'
alias kgs='kubectl get services'
alias kgd='kubectl get deployments'
alias kge='kubectl get event'
alias kcv='kubectl config view'
alias kal='minikube addons list'

# golang
export GOPATH=${HOME}/go
export PATH=$GOPATH/bin:$PATH
export PYENV_ROOT=${HOME}/.pyenv

# python 
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# flutter 
export PATH="$PATH:`pwd`/flutter/bin"

# 起動時にtmux起動 
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hiro08/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hiro08/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hiro08/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hiro08/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.rbenv/bin:$PATH"
