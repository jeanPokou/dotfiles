#!/usr/bin/env bash

echo " Installing jeanpokou dotfiles"
 #check if running on OSX

if [ "$(uname)" == "Darwin" ]; then
	echo -e "\n Running on OSX"
	source  init/brew.sh
fi