export PATH=$HOME/bin:/usr/local/bin:$PATH
export LANG=ja_JP.UTF-8


export ZSH=/Users/name/.oh-my-zsh


#python env
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"


#theme-bullet-train
ZSH_THEME="miloshadzic"
BULLETTRAIN_PROMPT_ORDER=(
    time
    git
    dir
)
BULLETTRAIN_PROMPT_ROOT=false

plugins=(git)

source $ZSH/oh-my-zsh.sh

#zsh間でヒストリを共有
setopt share_history
setopt no_beep #beep音を無効にする
setopt print_eight_bit #日本語ファイル名を表示する
setopt autocd #ディレクトリ名でcd
setopt hist_ignore_all_dups #同じコマンドをヒストリに残さない
setopt correct #コマンドミスを修正

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
alias cm='git commit -m'
alias add='git add .'
alias gl='git log'
alias gs='git status'
alias gca='git commit -am'
