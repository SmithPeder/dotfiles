# ====ZSH-CONFIGURATION====
zmodload zsh/zprof

# Path to zsh folder
export ROOT=$HOME/dotfiles/zsh
# Path to iterm2 folder
export ITERM=$HOME/dotfiles/iterm2
# Path to bin
export PATH=$PATH:/usr/local/bin
# Path to password store
export PASSWORD_STORE_DIR=$HOME/.password-store
# Path to ssh
export SSH_KEY_PATH=$HOME/.ssh/rsa_id
# Path to go
export PATH=$HOME/go/bin:$PATH
# Export colors
export TERM=xterm-256color

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


# Case-sensitive completion
CASE_SENSITIVE="false"

# Add ssh-agent
ssh-add 2> /dev/null

# Source fzf
[ -f ~/dotfiles/fzf/.fzf.zsh ] && source ~/dotfiles/fzf/.fzf.zsh           #TIME=(0.01)

# Source files
source $ROOT/.prompt.sh                                                    #TIME=(0.01)
source $ROOT/.aliases.sh                                                   #TIME=(0.00)
source $ROOT/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh           #TIME=(0.01)
source $ROOT/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh   #TIME=(0.09)
source $ROOT/plugins/zsh-kubectl-prompt/kubectl.zsh                        #TIME=(0.01)
source $ROOT/plugins//sudo/sudo.zsh                                        #TIME=(0.00)

# iterm2 statusbar 
function iterm2_print_user_vars() {
  iterm2_set_user_var kubecontext "ﴱ $(echo $ZSH_KUBECTL_PROMPT)"          #TIME=(0.01)
#  iterm2_set_user_var docker " $(docker ps -q | gwc -l) containers"      #TIME=(0.05)
  iterm2_set_user_var venv " $(echo $VIRTUAL_ENV)"                        #TIME=(0.01)
} 
source $ITERM/.itermrc.sh

# Add completion
last_comp_dump=$(date -r .zcompdump +%s)                                   #TIME=(0.04)
current_time=$( date +%s )
autoload -Uz compinit
if (( last_comp_dump < (current_time-(60*60*24)) )); then
  autoload -Uz compdump
  compinit
  compdump
else
  compinit -C
fi
