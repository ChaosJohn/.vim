#!/bin/sh 

DIR=$(pwd) 
VIMNAME=amix-basic
_HOME=$HOME

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

HOME=$(pwd) 
if [ $# -gt 0 ] && [ $1 = 'install' ]; then 
  git clone git://github.com/amix/vimrc.git ~/.vim_runtime
  sh ~/.vim_runtime/install_basic_vimrc.sh
fi

cd ~/.vim_runtime
git pull --rebase

HOME=$_HOME

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/'$VIMNAME'/g' ../bin/vim.$VIMNAME 
