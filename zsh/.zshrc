export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f "${CONFIG_HOME}/zsh/aliases.zsh" ] && . "${CONFIG_HOME}/zsh/aliases.zsh"

# Base 
setopt share_history
setopt no_beep #beep音を無効にする
setopt print_eight_bit #日本語ファイル名を表示する
setopt autocd #ディレクトリ名でcd
setopt hist_ignore_all_dups #同じコマンドをヒストリに残さない
setopt correct #コマンドミスを修正

# Golang
export GOPATH="${HOME}/go"
export PATH="$GOPATH/bin:$PATH"
export PYENV_ROOT="${HOME}/.pyenv"

# Deno
export DENO_INSTALL=${HOME}.deno
export PATH="$DENO_INSTALL/bin:$PATH"

# GCP
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . '/home/hiro08/google-cloud-sdk/path.zsh.inc'; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . '/home/hiro08/google-cloud-sdk/completion.zsh.inc'; fi

# Serverless 
export PATH="$HOME/.serverless/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
