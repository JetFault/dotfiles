#! /bin/bash

if [ ! `which vim` ]; then 
  echo "Vim not installed, let's install it!"
  if [ `which yum` ]; then
    sudo yum install vim
  elif [ `which apt` ]; then
    sudo apt-get install vim
  fi
fi

if [ -d "${HOME}/.vim" ]; then
	echo "No vim directory, figure out why! Peace!"
	exit 1
fi

### BIN ###
ln -sf `readlink -f bin` ~/

### VIM ###
ln -sf `readlink -f vimrc` ~/.vimrc

### BASH ###
ln -sf `readlink -f bashrc` ~/.bashrc
ln -sf `readlink -f bash_aliases` ~/.bash_aliases

### TMUX ###
ln -sf `readlink -f tmux.conf` ~/.tmux.conf


#Install Vundle cause VIM should manage VIMScripts, not git!
if [ ! -d "${HOME}/.vim/bundle/vundle" ]; then
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
vim +BundleInstall +qall

source ~/.bashrc
