#!/bin/sh

dir="$HOME/Developer/"

mkdir -p $dir
cd $dir

git clone --recursive https://github.com/sotsugov/config.git
cd config

echo CONFIGPATH=`pwd` > ~/.zshrc
echo '. $CONFIGPATH/.zshrc' >> ~/.zshrc

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
