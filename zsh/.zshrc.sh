HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Fix common buf with backspace
bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char

# Remove older duplicate entries from history
setopt hist_ignore_all_dups
# Remove superfluous blanks from history items
setopt hist_reduce_blanks
# Save history entries as soon as they are entered
setopt inc_append_history
# Share history between different instances of the shell
setopt share_history
# Activating auto cd
setopt auto_cd
# Autocorrect commands
setopt correct_all
# Automatically list
setopt auto_list
# Automatically use menu comletion
setopt auto_menu
# Move cursor to end if word had one match
setopt always_to_end
# Select completions with arrow keys
zstyle ':completion:*' menu select
# Group results by category
zstyle ':completion:*' group-name ''
# Enable approximate matches for completion
zstyle ':completion:::::' completer _expand _complete _ignored _approximate

# Export colors
export TERM=xterm-256color

# Case-sensitive completion
CASE_SENSITIVE="false"

# Add ssh-agent
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

# Nofify
source ~/dotfiles/zsh/plugins/zsh-notify/notify.plugin.zsh


# Complist
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
