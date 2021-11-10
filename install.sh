#!/bin/sh

dir="$HOME/Developer/personal"

mkdir -p $dir
cd $dir

git clone --recursive https://github.com/sotsugov/config.git
cd config

echo CONFIGPATH=`pwd` > ~/.zshrc
echo '. $CONFIGPATH/.zshrc' >> ~/.zshrc

