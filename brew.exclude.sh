#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
	fi
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# ---------------------------------------------
# ZSH
# ---------------------------------------------

# Install ZSH
brew install zsh zsh-completions

# To set zsh as your default shell, execute the following for macOS High Sierra
chsh -s /bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ---------------------------------------------
# Programming Languages and Frameworks
# ---------------------------------------------

# NodeJS 
brew install node

# Python 3
brew install python


# ---------------------------------------------
# Tools I use often
# ---------------------------------------------

# Yarn - an alternative to npm
brew install yarn

# Remove outdated versions from the cellar
brew cleanup