#!/bin/sh

VIMNAME=oh-my-vim
_HOME=$HOME

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

HOME=$(pwd) 
if [ $# -gt 0 ] && [ $1 = 'install' ]; then 
  # mac dependency for mac os x 
  # curl -L https://raw.github.com/liangxianzhe/oh-my-vim/master/tools/prepare_mac.sh | sh 
  curl -L https://raw.github.com/liangxianzhe/oh-my-vim/master/tools/prepare_mac.sh 
  curl -L https://raw.github.com/liangxianzhe/oh-my-vim/master/tools/install.sh | sh
fi

#sed -i 's/<F3>/<F5>/g' $HOME/.vimrc 
#sed -i 's/<F4>/<F6>/g' $HOME/.vimrc 

#if grep -Fxq 'nnoremap <C-J> <C-W><C-J>' $HOME/.vimrc 
#then
  #echo ''
#else 
  #echo 'nnoremap <C-J> <C-W><C-J>' >> $HOME/.vimrc 
  #echo 'nnoremap <C-K> <C-W><C-K>' >> $HOME/.vimrc 
  #echo 'nnoremap <C-H> <C-W><C-H>' >> $HOME/.vimrc 
  #echo 'nnoremap <C-L> <C-W><C-L>' >> $HOME/.vimrc 
#fi 

vim

HOME=$_HOME

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/'$VIMNAME'/g' ../bin/vim.$VIMNAME 
