# ====ZSH-CONFIGURATION====
zmodload zsh/zprof

# Path to zsh folder
export ROOT=$HOME/dotfiles/zsh
export COMPLETIONS=$HOME/dotfiles/zsh/completions
export PLUGINS=$HOME/dotfiles/zsh/plugins
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
# Path to mozart
export PATH=$PATH:/Applications/Mozart2.app/Contents/Resources/bin
# Export colors
export TERM=xterm-256color
# Node ENV
export NODE_ENV='development'

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
# Activate highlight on completion
zstyle ':completion:*' menu select

# Don't store wrong commands
zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

# Case-sensitive completion
CASE_SENSITIVE="false"

# Add ssh-agent
ssh-add 2> /dev/null

# Source fzf
[ -f ~/dotfiles/fzf/.fzf.zsh ] && source ~/dotfiles/fzf/.fzf.zsh           #TIME=(0.01)

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!node_modules/*"'
# Source files
source $ROOT/.prompt.sh                                                    #TIME=(0.01)
source $ROOT/.aliases.sh                                                   #TIME=(0.00)
source $ROOT/.completions.zsh
source $ROOT/.plugins.zsh

# iterm2 statusbar
zstyle ':zsh-kubectl-prompt:' separator '  '
zstyle ':zsh-kubectl-prompt:' preprompt ' ﴱ '
zstyle ':zsh-kubectl-prompt:' namespace false
function iterm2_print_user_vars() {
  iterm2_set_user_var kubecontext "$(echo $ZSH_KUBECTL_PROMPT)"            #TIME=(0.01)
  iterm2_set_user_var dockerps "$(docker ps -q | wc -l) containers"
  iterm2_set_user_var venv " $(echo $VIRTUAL_ENV)"                        #TIME=(0.01)
}
source $ITERM/.itermrc.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#zprof
