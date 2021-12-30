# Root
export ZSH=$HOME/.oh-my-zsh
export DOT=${HOME}/dotfiles

ZSH_THEME="robbyrussell"

# Plugins 
plugins=(git)

[ -f "${DOT}/aliases.zsh" ] && . "${DOT}/aliases.zsh"
[ -f "${DOT}/functions.zsh" ] && . "${DOT}/functions.zsh"

source "$ZSH/oh-my-zsh.sh"

setopt share_history # zsh間でヒストリを共有
setopt no_beep #beep音を無効にする
setopt print_eight_bit #日本語ファイル名を表示する
setopt autocd #ディレクトリ名でcd
setopt hist_ignore_all_dups #同じコマンドをヒストリに残さない
setopt correct #コマンドミスを修正

# linuxbrew 
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Python 
export PYENV_ROOT=${HOME}/.pyenv

# Golang
export GOPATH=${HOME}/go
export PATH=$GOPATH/bin:$PATH

# Deno
export DENO_INSTALL="$ZSH/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# GCP
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/completion.zsh.inc"; fi

# Serverless 
export PATH="$HOME/.serverless/bin:$PATH"
