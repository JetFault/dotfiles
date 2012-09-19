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

#Install Vundle cause VIM should manage VIMScripts, not git!
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#Set up our bin dir
ln -s `readlink -f bin` ~/


### VIM ###
#Set up our vimrc
ln -s `readlink -f .vimrc` ~/


ln -s `readlink -f .bashrc` ~/
ln -s `readlink -f .bash_aliases` ~/
