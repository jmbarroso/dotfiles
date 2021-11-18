#!/usr/bin/env bash

# Install tools useful for work
brew install --cask intellij-idea

# Install SDKMAN
curl -s "https://get.sdkman.io?rcupdate=false" | zsh

source "/Users/cfaria/.sdkman/bin/sdkman-init.sh"

# Work Chat
brew install --cask slack
brew install --cask zoom


# Infrastructure
brew install aws-cdk

# Install Node.js
brew install nodenv
nodenv init
nodenv install 16.13.0

# FTP Client
brew cask install cyberduck