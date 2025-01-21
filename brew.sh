#!/usr/bin/env bash

# Install command-line tools using Homebrew.
xcode-select --install

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install packages
brew install ack
brew install git
brew install git-lfs
brew install gs
brew install imagemagick
brew install lynx
brew install p7zip
brew install gnupg
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install ffmpeg

brew install postgresql
brew install lua
brew install rust
brew install go
brew install node
brew install python
brew install pipx

brew install nvm
brew install pnpm
brew install gh

brew install --cask ghostty
brew install --cask firefox
brew install --cask google-chrome

# Remove outdated versions from the cellar.
brew cleanup
