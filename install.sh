if [ ! `which vim` ]; then 
  echo "Vim not installed, let's install it!"
  if [ `which yum` ]; then
    sudo yum install -y vim
  elif [ `which apt` ]; then
    sudo apt-get install vim
  fi
fi

if [ ! -d "~/.vim" ]; then
  echo "No vim directory, figure out why! Peace!"
  exit 1
fi

### BIN ###
ln -s `readlink -f bin` ~/

### VIM ###
ln -s `readlink -f vimrc` ~/

### BASH ###
ln -s `readlink -f bashrc` ~/
ln -s `readlink -f bash_aliases` ~/

### TMUX ###
ln -s `readlink -f tmux.cconf` ~/


#Install Vundle cause VIM should manage VIMScripts, not git!
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
