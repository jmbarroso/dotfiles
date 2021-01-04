#!/usr/bin/env bash

# Formulae for Useful Desktop Applications using Cask
brew tap homebrew/cask-versions

# Install cool fonts
brew tap homebrew/cask-fonts
brew install --cask font-source-code-pro

# Coding
brew install --cask sublime-text

# Set sublime as a command line tool
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

# Notes
brew install --cask evernote

# Utilities
brew install --cask clipy
brew install --cask caffeine
brew install --cask dashlane
brew install --cask itsycal
brew install --cask dropbox

# Web
brew install --cask google-chrome

# Chat
brew install --cask whatsapp

# Entertainment
brew install --cask spotify

# Remove outdated versions from the cellar.
brew cleanup