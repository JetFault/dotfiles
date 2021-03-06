#! /bin/bash

CUR="`pwd`"

### GIT ###
ln -sf $CUR/gitconfig ~/.gitconfig

### BIN ###
if [ ! -d "${HOME}/bin" ]; then
    ln -sf $CUR/bin ~/bin
fi

### VIM ###
ln -sf $CUR/vimrc ~/.vimrc

### BASH ###
ln -sf $CUR/profile ~/.profile
ln -sf $CUR/bash_profile ~/.bash_profile
ln -sf $CUR/bash_colors ~/.bash_colors
ln -sf $CUR/bashrc ~/.bashrc
ln -sf $CUR/bash_aliases ~/.bash_aliases

### TMUX ###
ln -sf $CUR/tmux.conf ~/.tmux.conf

### JSHint ###
ln -sf $CUR/jshintrc ~/.jshintrc

### MAC ###
if [ "`uname`" == "Darwin" ]; then
  ln -sf $CUR/bashrc_mac ~/.bashrc_mac
fi

#Install Vundle cause VIM should manage VIMScripts, not git!
if [ ! -d "${HOME}/.vim/bundle/vundle" ]; then
	git clone git@github.com:gmarik/vundle.git ~/.vim/bundle/vundle
fi
vim +BundleInstall +qall

source ~/.bashrc
