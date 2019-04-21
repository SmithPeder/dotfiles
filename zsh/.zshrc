# ====ZSH-CONFIGURATION====

# Path to oh-my-zsh installation
export ZSH="/Users/smith/dotfiles/zsh/.oh-my-zsh"

# Path to zsh folder
export ROOT="/Users/smith/dotfiles/zsh"

# Path to bin
export PATH=$PATH:/usr/local/bin

# Normal settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
# Remove older duplicate entries from history
setopt hist_ignore_all_dups
# Remove superfluous blanks from history items
setopt share_history
# Activating auto cd
setopt auto_cd

# Set custom theme
#ZSH_THEME="spaceship"

# List of plugins
plugins=(
  git 
  kubectl
  django
  docker
  npm
  yarn
  osx
  pip
  python
  redis-cli
  sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-kubectl-prompt
)

# Source other configuration files
source $ZSH/oh-my-zsh.sh
source $ROOT/.prompt.sh
source $ROOT/.aliases.sh

# Set ruby env path, to enable colorls gem
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Export colors
export TERM=xterm-256color

# Case-sensitive completion
CASE_SENSITIVE="false"

# Add ssh-agent
ssh-add 2> /dev/null

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
export PATH=$PATH:/usr/local/bin

# go
export PATH=$HOME/go/bin:$PATH

# Source fzf
[ -f ~/dotfiles/fzf/.fzf.zsh ] && source ~/dotfiles/fzf/.fzf.zsh
