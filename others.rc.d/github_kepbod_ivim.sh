#!/bin/sh 

DIR=$(pwd) 
VIMNAME=ivim
_HOME=$HOME

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

HOME=$(pwd) 
if [ $# -gt 0 ] && [ $1 = 'install' ]; then 
  bash <(curl -L https://raw.githubusercontent.com/kepbod/ivim/master/setup.sh) -i
  # or
  #bash <(wget --no-check-certificate https://raw.githubusercontent.com/kepbod/ivim/master/setup.sh -O -) -i
fi

sed -i 's/| Plug/\n    Plug/g' .vimrc
#sed -i 's/nnoremap <Leader>f :NERDTreeToggle<CR>/nmap <F5> :NERDTreeToggle<CR>/g' .vimrc
#sed -i 's/nnoremap <Leader>t :TagbarToggle<CR>/nmap <F6> :TagbarToggle<CR>/g' .vimrc
if grep -Fxq 'nmap <F5> :NERDTreeToggle<CR>' .vimrc; then 
  echo 'nmap <F5> :NERDTreeToggle<CR>' >> .vimrc 
fi
if grep -Fxq 'nmap <F6> :TagbarToggle<CR>' .vimrc; then 
  echo 'nmap <F6> :TagbarToggle<CR>' >> .vimrc 
fi

bash $HOME/.ivim/setup.sh -n

HOME=$_HOME

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/'$VIMNAME'/g' ../bin/vim.$VIMNAME 
