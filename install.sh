#!/usr/bin/env bash

DOTFILES=$HOME/dotfiles
echo " Installing jeanpokou dotfiles"
 #check if running on OSX

if [ "$(uname)" == "Darwin" ]; then
	echo -e "\n Running on OSX"
	source  init/brew.sh
fi

# copy .zshrc to ~
echo -e " \n\n Installing .config"
echo -e "=============================================="
if [ !-d $HOME/.config  ]; then
	echo "Creating .config "
	mkdir -p $HOME/config
fi

#copying files from config to ~/.config

cp -rf  $DOTFILES/.config/ $HOME/.config
cp -rf $DOTFILES/zsh/.zshrc $HOME/
cp -rf  $DOTFILE/zsh/zeta.zsh-theme $HOME/.oh-my-zsh/theme
cp -rf $DOTFILE/.aliases $HOME/
cp -rf $DOTFILE/.functions $HOME/
cp -rf $DOTFILE/.bash_profile  $HOME/
