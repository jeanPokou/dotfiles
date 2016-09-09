#!/bin/sh

if test ! $(which brew); then 
	echo "installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update homebrew 

brew update #make sure we using the lastest homebrew

echo -e "\n\n Installing homebrew packages ..."

# Installing cli tools
echo -e "\n\n Installing ack"
brew install ack   # Search for pattern in current directory

echo -e "\n\n Installing tree"
brew install tree  # display folder tree

echo -e "\n\n Installing wget"
brew install wget  #Retrieve  file using http, https and FTP


echo -e "\n\n Installing cask"
brew tap caskroom/cask  #Install software with ease using cask


#  Installing Development tools
echo -e "\n\n Installing Development tools"
brew install git  #  github 

echo -e "\n\n Installing Development tools"
brew install hub  # extend git features 


echo -e "\n\n Installing fzf "
brew install fzf  #Command line fuzzy finder


echo -e "\n\n Installing macvim and overriding system vi"
brew install macvim --override-system-vim  #macvim , add ios features to vim


echo -e "\n\n Installing reattach-to-username"
brew install reattach-to-user-namespace #access OSX clipboard in tmux sessions


echo -e "\n\n Installing Terminal Multiplexer"
brew install tmux  #Terminal multiplexer


echo -e "\n\n Installing Zsh"
brew install zsh # Zsh terminal 


echo -e "\n\n Installing highlight"
brew install highlight #syntax highlighter for several outputs formats 


echo -e "\n\n Installing nvm"
brew install nvm #Node Version Manager 


echo -e "\n\n Installing z"
brew install z # jump around folder 


echo -e "\n\n Installing markdown"
brew install markdown #Text to HTML conversion


echo -e "\n\n Installing diff-so-fancy"
brew install diff-so-fancy #git diff fancy display 


echo -e "\n\n Installing zsh-syntax-highlighting"
brew install zsh-syntax-highlighting  #highlight syntax in zsh 


echo -e "\n\n Installing zsh-autosuggestions"
brew install zsh-autosuggestions #Autosuggestion for zsh 

# Install neoVim

echo -e "\n\n Installing neo vim "
brew install neovim/neovim/neovim  # enhance vim


#Install font tools 

echo -e " Installing fonts"
brew install sfnt2woff  # convert existing TrueType/OpenType font to WOFF format
brew install woff2     #woff fonts
brew tap bramstein/webfontstools

# Installing operator mono from dropbox
source ./operator-mono.sh



exit 0;