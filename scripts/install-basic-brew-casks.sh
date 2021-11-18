#!/usr/bin/env bash

# Formulae for Useful Desktop Applications using Cask
brew tap homebrew/cask-versions

# Install cool fonts
brew install svn
brew tap homebrew/cask-fonts
brew install --cask font-source-code-pro

# Coding
brew install --cask sublime-text

# Set sublime as a command line tool
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

# Notes
brew install --cask evernote
brew install --cask notion

# Utilities
brew install --cask clipy
brew install --cask caffeine
brew install --cask dropbox
brew install --cask hammerspoon #ShiftIt -> https://github.com/peterklijn/hammerspoon-shiftit/blob/master/README.md

# Web
brew install --cask google-chrome
brew install --cask firefox


# Entertainment
brew install --cask spotify

# Remove outdated versions from the cellar.
brew cleanup