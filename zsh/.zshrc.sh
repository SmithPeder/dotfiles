# Set no update
export HOMEBREW_NO_AUTO_UPDATE=1

# Export colors
export TERM=xterm-256color

# Set name of the theme
ZSH_THEME="robbyrussell"

# Case-sensitive completion
CASE_SENSITIVE="false"

# Add ssh-agend
ssh-add 2> /dev/null

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
