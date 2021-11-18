# Path to your oh-my-zsh installation.
export ZSH="$HOME/development/dotfiles/.oh-my-zsh"

# Oh My Zsh Theme
ZSH_THEME="gentoo"

# Oh My Zsh plugins
plugins=(
	git
)

source $ZSH/oh-my-zsh.sh

# Organized Configuration
source ~/.aliases
source ~/.exports

eval "$(/opt/homebrew/bin/brew shellenv)"

