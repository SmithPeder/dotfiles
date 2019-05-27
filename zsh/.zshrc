# ====ZSH-CONFIGURATION====
#zmodload zsh/zprof

# Path to zsh folder
export ROOT=$HOME/dotfiles/zsh
# Path to oh-my-zsh installation
export ZSH=$HOME/dotfiles/zsh/.oh-my-zsh
# Path to iterm2 folder
export ITERM=$HOME/dotfiles/iterm2
# Path to bin
export PATH=$PATH:/usr/local/bin
# Path to bin
export PASSWORD_STORE_DIR=$HOME/.password-store
# Path to ssh
export SSH_KEY_PATH=$HOME/.ssh/rsa_id
# Path to go
export PATH=$HOME/go/bin:$PATH

# History settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
# Remove older duplicate entries from history
setopt hist_ignore_all_dups
# Remove superfluous blanks from history items
setopt share_history
# Activating auto cd
setopt auto_cd
# Don't store wrong commands
zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

# List of plugins
plugins=(
  git 
  django
  docker
  npm
  yarn
  osx
  pip
  python
  redis-cli
  sudo
  virtualenv
  kubectl # modified due to slow _comp
  pass
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-kubectl-prompt
)

# Source other configuration files
 source $ZSH/oh-my-zsh.sh
 source $ROOT/.prompt.sh
 source $ROOT/.aliases.sh

# iterm2 statusbar 
function iterm2_print_user_vars() {
  iterm2_set_user_var kubecontext "ﴱ $(kubectl config current-context)"
  iterm2_set_user_var docker " $(docker ps -q | gwc -l) containers"
  iterm2_set_user_var venv " $(echo $VIRTUAL_ENV)"
}
source $ITERM/.itermrc.sh

# Export colors
export TERM=xterm-256color

# Case-sensitive completion
CASE_SENSITIVE="false"

# Add ssh-agent
ssh-add 2> /dev/null


# Source fzf
[ -f ~/dotfiles/fzf/.fzf.zsh ] && source ~/dotfiles/fzf/.fzf.zsh

#zprof
