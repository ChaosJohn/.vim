#!/bin/sh 

DIR=$(pwd) 
VIMNAME=amix-awesome
_HOME=$HOME

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

HOME=$(pwd) 
if [ $# -gt 0 ] && [ $1 = 'install' ]; then 
  git clone https://github.com/amix/vimrc.git ~/.vim_runtime
  sh ~/.vim_runtime/install_awesome_vimrc.sh
fi

cd ~/.vim_runtime
git pull --rebase

if grep -Fxq 'nmap <F5> :NERDTreeToggle<CR>' .vimrc; then 
  echo 'nmap <F5> :NERDTreeToggle<CR>' >> .vimrc 
fi

HOME=$_HOME

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/'$VIMNAME'/g' ../bin/vim.$VIMNAME 
