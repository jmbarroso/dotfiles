#!/bin/bash
which brew &>/dev/null
if [ $? -ne 0 ]
then
	echo "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo eval "$(/opt/homebrew/bin/brew shellenv)"
	eval "$(/opt/homebrew/bin/brew shellenv)"
else
	echo "Homebrew already installed. Skipping..."
fi
