#!/usr/bin/env bash

# Install tools useful for work

# Install Mysql 5.6
brew install mysql@5.6
echo 'export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"' >> ~/.bash_profile

# Install postman
brew cask install postman

# Grails
sdk install grails 2.5.6

# Install RVM (CI Manager)
curl -sSL "https://get.rvm.io" | bash

source /Users/cfaria/.rvm/scripts/rvm

rvm install 2.2.2