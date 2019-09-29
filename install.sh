#!/bin/sh

BASEDIR="$HOME"/.dotfiles
ZDOTDIR=$BASEDIR/zsh
IDOTDIR=$BASEDIR/install

mkdir ~/github.com

. $IDOTDIR/brew.sh
. $IDOTDIR/clone.sh
. $IDOTDIR/symlinks.sh
