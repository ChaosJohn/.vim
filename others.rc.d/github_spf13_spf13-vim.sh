#!/bin/sh

VIMNAME=spf13
_HOME=$HOME

cd $HOME/.vim/ 
mkdir -p others/$VIMNAME
cd others/$VIMNAME

HOME=$(pwd) 
if [ $# -gt 0 ] && [ $1 = 'install' ]; then 
  curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
  #sh <(curl https://j.mp/spf13-vim3 -L)
fi

sed -i 's/amirh/heracek/g' .vimrc.bundles

vim +BundleInstall! +BundleClean +q

HOME=$_HOME

mkdir -p ../bin
cp $HOME/.vim/_vim ../bin/vim.$VIMNAME
sed -i 's/DEFAULT/'$VIMNAME'/g' ../bin/vim.$VIMNAME 
