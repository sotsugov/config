#!/bin/sh

dir="$HOME/Developer/"

mkdir -p $dir
cd $dir

git clone --recursive https://github.com/sotsugov/config.git
cd config

# OMZ
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Make symlinks
rm -rf $HOME/.gitconfig
rm -rf $HOME/.p10k.zsh
rm -rf $HOME/.zshrc

ln -s $CONFIGPATH/dots/.gitconfig $HOME/.gitconfig
ln -s $CONFIGPATH/dots/.p10k.zsh $HOME/.p10k.zsh
ln -s $CONFIGPATH/dots/.zshrc $HOME/.zshrc

# Add preferences
# if ghostty is installed
rm -rf $HOME/Library/Application\ Support/com.mitchellh.ghostty/config
ln -s $CONFIGPATH/prefs/ghostty/config $HOME/Library/Application\ Support/com.mitchellh.ghostty/config
