#!/bin/sh 

rm -rf pathogen.tar.gz 
tar -cvzf pathogen.tar.gz --exclude=./.git * 

cd dotvim 
find . -name ".gitignore" | xargs rm 
find . -name ".git" | xargs rm -rf 
cd ..

cd bundle 
find . -name ".gitignore" | xargs rm 
find . -name ".git" | xargs rm -rf 
cd .. 

