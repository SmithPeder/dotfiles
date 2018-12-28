# Path to your oh-my-zsh installation.
export ZSH="/Users/smith/dotfiles/zsh/plugins/oh-my-zsh"

# Set name of the theme
ZSH_THEME="robbyrussell"

# Case-sensitive completion
CASE_SENSITIVE="false"

# Add ssh-agend
ssh-add 2> /dev/null

# How is this different
source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Prompt
source ~/dotfiles/zsh/prompt.sh

# Binding
source ~/dotfiles/zsh/bind.sh

# AutoSuggestions
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# SyntaxHighlighting
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
