#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
#brew install homebrew/php/php55 --with-gmp

# Install other useful binaries.
brew install git
brew install cloc
brew install ccat

# Install Mysql 5.6
brew install mysql@5.6
echo 'export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"' >> ~/.bash_profile

# Formulae for Useful Desktop Applications using Cask
# More Info at https://github.com/caskroom/homebrew-cask
brew install caskroom/cask/brew-cask

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node
brew install yarn
brew cask install postman

# Install JAVA 7
brew tap caskroom/versions
brew cask install java7

# Set all Casks to be installed in Applications folder
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install cool fonts
brew tap caskroom/fonts
brew cask install font-source-code-pro

# Coding
brew cask install sublime-text
brew cask install evernote
brew cask install intellij-idea
brew cask install mysqlworkbench

# Utilities
brew cask install caffeine
brew cask install dashlane
brew cask install itsycal

# Web
brew cask install google-chrome

# Chat
brew cask install slack

# Personal
brew cask install dropbox

# Extra
brew cask install vlc
brew cask install spotify

# Remove outdated versions from the cellar.
brew cleanup --force

# Install SDKMAN (Grails dependency)
curl -s "https://get.sdkman.io" | bash

source "/Users/cfaria/.sdkman/bin/sdkman-init.sh"

sdk install groovy 2.1.7
sdk install grails 2.3.6
sdk install grails 2.3.11

# Install RVM (CI Manager)
curl -sSL "https://get.rvm.io" | bash

source /Users/cfaria/.rvm/scripts/rvm

rvm install 2.2.2
