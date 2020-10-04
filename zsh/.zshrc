# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to zsh folder
export ROOT=$HOME/dotfiles/zsh
export DOTFILES=$HOME/dotfiles
export COMPLETIONS=$HOME/dotfiles/zsh/completions
export PLUGINS=$HOME/dotfiles/zsh/plugins
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
# Node ENV
export NODE_ENV='development'
# Password store
export PASSWORD_STORE_DIR=$HOME/.password-store
# Fix brew
export LC_ALL=en_US.UTF-8
# Export GPG
export GPG_TTY=$(tty)

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Fix shit
export LC_CTYPE=C
export LANG=C

# History settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
# Remove older duplicate entries from history
setopt hist_ignore_all_dups
# Remove superfluous blanks from history items
setopt share_history
# Activating auto cd
setopt auto_cd
# Activate highlight on completion
zstyle ':completion:*' menu select

# Case-sensitive completion
CASE_SENSITIVE="false"

# Add ssh-agent
ssh-add 2> /dev/null

# Source files
source $ROOT/aliases.zsh
source $ROOT/completions.zsh
source $ROOT/plugins.zsh
source $ROOT/fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
