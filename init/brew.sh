#!/bin/sh

if test ! $(which brew); then 
	echo "installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update homebrew 

brew update #make sure we using the lastest homebrew

echo -e "\n\n Installing homebrew packages ..."

# Installing cli tools

echo -e "\n\n Installing wifi-password"
brew install wifi-password # get wifi-password

echo -e "\n\n Installing gnu-sed"
brew install gnu-sed --with-defaults-names # Replace system sed by gnu-sed, replace words in files and so many more 

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
brew install macvim --with-override-system-vim  #macvim , add ios features to vim


echo -e "\n\n Installing reattach-to-username"
brew install reattach-to-user-namespace #access OSX clipboard in tmux sessions


echo -e "\n\n Installing Terminal Multiplexer"
brew install tmux  #Terminal multiplexer


echo -e "\n\n Installing Zsh"
brew install zsh # Zsh terminal 

#Use zsh as default shell
if ! fgrep -q 'usr/local/bin/zsh' /etc/shells; then
	echo "\n Setting up zsh as default shell "
	echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
	csh -s /usr/local/bin/zsh;
fi;

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

# Installing operator mono from dropbox
source ./operator-mono.sh

#Install recents versions of iOS tools
brew cask install java
brew install homebrew/dupes/grep #search for pattern in files
brew install homebrew/dupes/openssh # remote login tools


# Install some CTF tools; see https://github.com/zardus/ctf-tools. inspired from mathiasbynens dotfiles
brew install aircrack-ng	
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
#ask if user  want to install android-sdk as it takes  several minutes
while true; do
	read -p "\n\n Do you want to install android-sdk? Notice: It will take several minutes to finish" yn
	case $yn in 
		[Yes]* ) brew install android-sdk; break;;
		[No]* ) exit;;
		* ) echo "Please answer yes or no.";;
	esac
done

brew cask install google-chrome
brew cask install sublime
brew cask install spotify
brew cask install caffeine
brew cask install spectacle
brew install battery

# removing outdated version of homebrew packages
echo "\n\n Cleaning outaded version of packages"
brew cleanup
exit 0;