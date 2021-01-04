#!/usr/bin/env bash

# Install tools useful for work

brew ls --versions mysql@5.6

# RDS
brew install mysql@5.6

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash

source "/Users/cfaria/.sdkman/bin/sdkman-init.sh"

# Java
sdk install java 7.0.181-zulu
sdk install java 8.0.275-amzn
sdk install java 11.0.9-amzn

# Grails & Groovy
sdk install grails 2.5.6
sdk install gradle 2.9
sdk install groovy 2.5.1

# Install postman
brew install --cask postman

# Work Chat
brew install --cask slack

# Install Node.js
brew install nodenv
nodenv init
nodenv install 8.11.3
nodenv install 10.16.1

# Install RVM
curl -sSL "https://get.rvm.io" | bash

source /Users/cfaria/.rvm/scripts/rvm

rvm install 2.2.2

# Python
brew install pyenv