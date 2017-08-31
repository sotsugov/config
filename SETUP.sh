echo CONFIGPATH=`pwd` > ~/.zshrc
echo '. $CONFIGPATH/zshrc' >> ~/.zshrc

rm ~/.slate
ln -s `pwd`/slate.config ~/.slate

rm ~/.gitconfig
ln -s `pwd`/git.config ~/.gitconfig
