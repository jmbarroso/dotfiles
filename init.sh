#!/usr/bin/env bash

cd scripts

echo
echo "###################################"
echo "Setting up ZSH"
echo "###################################"
echo
echo "Install Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo
echo "Setting up ZSH configurations"
export ZSH="~/development/dotfiles/oh-my-zsh"
ln -s ~/development/dotfiles/.zshrc ~/.zshrc
ln -s ~/development/dotfiles/.aliases ~/.aliases
ln -s ~/development/dotfiles/.exports ~/.exports

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