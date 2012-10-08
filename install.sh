#! /bin/bash

### GIT ###
ln -sf `readlink -f gitconfig` ~/.gitconfig

### BIN ###
ln -sf `readlink -f bin` ~/bin

### VIM ###
ln -sf `readlink -f vimrc` ~/.vimrc

### BASH ###
ln -sf `readlink -f bash_profile` ~/.bash_profile
ln -sf `readlink -f bashrc` ~/.bashrc
ln -sf `readlink -f bash_aliases` ~/.bash_aliases

### TMUX ###
ln -sf `readlink -f tmux.conf` ~/.tmux.conf

### JSHint ###
ln -sf `readlink -f jshintrc` ~/.jshintrc


#Install Vundle cause VIM should manage VIMScripts, not git!
if [ ! -d "${HOME}/.vim/bundle/vundle" ]; then
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
vim +BundleInstall +qall


source ~/.bashrc
