#!/bin/sh

VIMNAME=tao12345666333
_HOME=$HOME

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

HOME=$(pwd) 
if [ $# -gt 0 ] && [ $1 = 'install' ]; then 
  pip install --user dbgp pep8 flake8 pyflakes isort
  wget https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc
fi

#sed -i 's/<F3>/<F5>/g' $HOME/.vimrc 
#sed -i 's/<F4>/<F6>/g' $HOME/.vimrc 
if grep -Fxq 'nmap <F5> :NERDTreeToggle<CR>' .vimrc; then 
  echo 'nmap <F5> :NERDTreeToggle<CR>' >> .vimrc 
fi
if grep -Fxq 'nmap <F6> :TagbarToggle<CR>' .vimrc; then 
  echo 'nmap <F6> :TagbarToggle<CR>' >> .vimrc 
fi

if grep -Fxq 'nnoremap <C-J> <C-W><C-J>' $HOME/.vimrc 
then
  echo ''
else 
  echo 'nnoremap <C-J> <C-W><C-J>' >> $HOME/.vimrc 
  echo 'nnoremap <C-K> <C-W><C-K>' >> $HOME/.vimrc 
  echo 'nnoremap <C-H> <C-W><C-H>' >> $HOME/.vimrc 
  echo 'nnoremap <C-L> <C-W><C-L>' >> $HOME/.vimrc 
fi 

vim -E -u $HOME/.vimrc +qall

HOME=$_HOME

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/'$VIMNAME'/g' ../bin/vim.$VIMNAME 
