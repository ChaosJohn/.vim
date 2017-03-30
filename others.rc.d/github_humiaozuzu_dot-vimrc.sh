#!/bin/sh 

DIR=$(pwd) 
VIMNAME=humiaozuzu

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

git clone git://github.com/humiaozuzu/dot-vimrc.git .vim 

git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle 

sed -i 's/edsono/bumaociyuan/g' .vim/bundles.vim

HOME=. vim -u .vim/vimrc +BundleInstall

sed -i "s/'.vital')/'.vital', 1)/g" .vim/bundle/neocomplcache/autoload/vital.vim 
#sed -i 's/set background=dark/"set background=dark/g' .vim/vimrc
sed -i 's/color solarized/"color solarized/g' .vim/vimrc

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/humiaozuzu/g' ../bin/vim.$VIMNAME 
