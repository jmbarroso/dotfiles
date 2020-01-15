#!/usr/bin/env bash

# Install tools useful for work

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash

source "/Users/cfaria/.sdkman/bin/sdkman-init.sh"

sdk install java 7.0.181-zulu
sdk install java 8.0.181-oracle
sdk install java 9.0.4-openjdk
sdk install groovy 2.5.1

# Install Mysql 5.6
brew install mysql@5.6
echo 'export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"' >> ~/.bash_profile

# Install postman
brew cask install postman

# Chat
brew cask install slack

# Containers and stuff
brew install kubernetes-cli

# Grails
sdk install grails 2.5.6

# Install RVM (CI Manager)
curl -sSL "https://get.rvm.io" | bash

source /Users/cfaria/.rvm/scripts/rvm

rvm install 2.2.2