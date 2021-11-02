export ZSH="/home/hiro08/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

ZSH_THEME="robbyrussell"
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
alias gi='git init'
alias gp='git push'
alias gc='git commit -m'
alias ga='git add .'
alias gl='git log'
alias gs='git status'
alias gca='git commit -am'
alias gr='git fetch origin && git pull origin'
alias grs='git reset --hard HEAD'

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

# amplify 
alias ap='amplify push --yes'
alias aps='amplify status'
alias apl='amplify env pull'
alias apw='amplify amplify-function-hotswap-plugin watch'

# golang
export GOPATH=${HOME}/go
export PATH=$GOPATH/bin:$PATH
export PYENV_ROOT=${HOME}/.pyenv

# Deno
export DENO_INSTALL="/home/hiro08/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


# GCP
if [ -f '/home/hiro08/google-cloud-sdk/path.zsh.inc' ]; then . '/home/hiro08/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/home/hiro08/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/hiro08/google-cloud-sdk/completion.zsh.inc'; fi


# serverless 
export PATH="$HOME/.serverless/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
