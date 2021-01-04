#!/usr/bin/env bash

cd scripts

echo
echo "###################################"
echo "Setting up BASH"
echo "###################################"
echo
echo "Setting bash as default"
chsh -s /bin/bash
ln -s ~/development/dotfiles/.aliases ~/.aliases
ln -s ~/development/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/development/dotfiles/.bash_prompt ~/.bash_prompt
ln -s ~/development/dotfiles/.exports ~/.exports
ln -s ~/development/dotfiles/.inputrc ~/.inputrc

echo
echo "###################################"
echo "Installing Homebrew..."
echo "###################################"
echo
bash ./install-homebrew.sh

echo
echo "###################################"
echo "Installing Basic Brew Formulae..."
echo "###################################"
echo
bash ./install-basic-brew-formulae.sh

echo
echo "###################################"
echo "Installing Basic Brew Casks..."
echo "###################################"
echo
bash ./install-basic-brew-casks.sh

echo
echo "###################################"
echo "Installing Work Brew..."
echo "###################################"
echo
bash ./install-work-brew.sh


source ~/.bash_profile