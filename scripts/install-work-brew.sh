#!/usr/bin/env bash

# Install tools useful for work
brew install --cask intellij-idea

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash

source "/Users/cfaria/.sdkman/bin/sdkman-init.sh"

# Java
sdk install java 11.0.9-amzn

# Work Chat
brew install --cask slack

# Work Wiki/Ticketing
brew install --cask notion

# Infrastructure
brew install aws-cdk

# Install Node.js
brew install nodenv
nodenv init
nodenv install 16.13.0