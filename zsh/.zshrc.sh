# Path to your oh-my-zsh installation.
export ZSH="/Users/smith/dotfiles/zsh/plugins/oh-my-zsh"

# Set name of the theme
ZSH_THEME="robbyrussell"

# Case-sensitive completion
CASE_SENSITIVE="false"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

# How is this different
source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# AutoSuggestions
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Prompt
source ~/dotfiles/zsh/prompt.sh

# Binding
source ~/dotfiles/zsh/bind.sh
