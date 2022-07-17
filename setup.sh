#!/bin/bash

SUDO_USER=$(whoami)

if test ! $(which brew); then
	echo "Installing homebrew..." 
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updateing homebrew..." 
brew update

echo "Upgrading homebrew..." 
brew upgrade

echo "Installing Git..."
brew install git

git config --global user.name "hiro08gh"
git config --global user.email "hiro08gh@gmail.com"

echo "Installing homebrew cask"
brew install caskroom/cask/brew-cask

#Install Zsh & Oh My Zsh
echo "Installing Oh My ZSH..."
curl -L http://install.ohmyz.sh | sh

echo "Setting up Zsh plugins..."
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

echo "Setting ZSH as shell..."
chsh -s /bin/zsh

PACKAGES=(
    jq
    nvm
    node
    deno
    vim
    watch
    wget
    gh
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

apps=(
	google-chrome
	visual-studio-code
	iterm2
	raycast
	slack
	figma
)

echo "Installing cask apps..."
sudo -u $SUDO_USER brew install --cask ${CASKS[@]}

echo "Cleaning up"
brew cleanup
echo "Ask the doctor"
brew doctor
