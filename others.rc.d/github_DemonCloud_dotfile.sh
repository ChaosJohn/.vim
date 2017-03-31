#!/bin/sh 

DIR=$(pwd) 
VIMNAME=aix
_HOME=$HOME

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

HOME=$(pwd) 
if [ $# -gt 0 ] && [ $1 = 'install' ]; then 
  git clone https://github.com/DemonCloud/Aix-Vim.git 
  sh Aix-Vim/install.sh 
fi

if grep -Fxq 'nmap <F5> :NERDTreeToggle<CR>' .vimrc; then 
  echo 'nmap <F5> :NERDTreeToggle<CR>' >> .vimrc 
fi

HOME=$_HOME

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/'$VIMNAME'/g' ../bin/vim.$VIMNAME 
