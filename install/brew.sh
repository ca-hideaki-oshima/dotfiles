# Update Homebrew
brew update
brew upgrade

# General
brew install zsh
brew install peco

# Version control system
brew install git

# For development
## golang
brew install go
brew install hg

## nodejs
brew install nodebrew

## ruby
brew install rbenv
brew install ruby-build

# python
brew install pyenv

# mysql
brew install mycli

# redis
brew install redis

# java
# sbt@0.13に合わせる為にopenjdk8をinstallしている
brew cask install homebrew/cask-versions/adoptopenjdk8

# sbt
brew install sbt@0.13

# nvim
brew install neovim/neovim/neovim

########
# Cask #
########

## Docker
brew cask install docker

#########
# Fonts #
#########

# Add repository
brew tap caskroom/fonts

# install
brew cask install font-source-code-pro-for-powerline
