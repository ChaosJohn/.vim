#!/bin/sh 

DIR=$(pwd) 
VIMNAME=humiaozuzu
_HOME=$HOME

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

HOME=$(pwd) 
if [ $# -gt 0 ] && [ $1 = 'install' ]; then 
  git clone git://github.com/humiaozuzu/dot-vimrc.git .vim 

  git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle 

  ln -s .vim/vimrc .vimrc
fi

sed -i 's/edsono/bumaociyuan/g' .vim/bundles.vim

vim +BundleInstall

sed -i "s/'.vital')/'.vital', 1)/g" .vim/bundle/neocomplcache/autoload/vital.vim 
#sed -i 's/set background=dark/"set background=dark/g' .vim/vimrc
sed -i 's/color solarized/"color solarized/g' .vim/vimrc
sed -i 's/let g:tagbar_left=1/let g:tagbar_left=0/g' .vim/vimrc
sed -i 's/let NERDTreeWinPos = "right"/let NERDTreeWinPos = "left"/g' .vim/vimrc
sed -i 's/nmap <F5> :TagbarToggle<cr>/nmap <F6> :TagbarToggle<CR>/g' .vim/vimrc
sed -i 's/nmap <F6> :NERDTreeToggle<cr>/nmap <F5> :NERDTreeToggle<CR>/g' .vim/vimrc
sed -i 's/<cr>/<CR>/g' .vim/vimrc

HOME=$_HOME

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/'$VIMNAME'/g' ../bin/vim.$VIMNAME 
