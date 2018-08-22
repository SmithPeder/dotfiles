# History
  HISTFILE=~/.zsh_history
  SAVEHIST=10000 
  setopt inc_append_history
  setopt share_history
    
# Export setting to vim
  export VISUAL=vim

# For vim mappings: 
  stty -ixon

# Plugins
  source ~/dotfiles/zsh/plugins/fixls.zsh
  source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/history.zsh
  source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/key-bindings.zsh
  source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/completion.zsh
  source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Keybindings
  source ~/dotfiles/zsh/bind.sh

# Pycharm path
  export PATH=$PATH:~/pycharm/bin

# Julia
  export PATH=$PATH:~/julia-1.0.0/bin

# VPN
  export PATH=$PATH:~/anyconnect-linux64-4.6.00362/vpn

# Export junit
  export CLASSPATH=.:$CLASSPATH:~/JUnit/junit-4.12.jar:~/JUnit/hamcrest-core-1.3.jar

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
  if [[ "${terminfo[kcuu1]}" != "" ]]; then
    autoload -U up-line-or-beginning-search
    zle -N up-line-or-beginning-search
    bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
  fi
# start typing + [Down-Arrow] - fuzzy find history backward
  if [[ "${terminfo[kcud1]}" != "" ]]; then
    autoload -U down-line-or-beginning-search
    zle -N down-line-or-beginning-search
    bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
  fi

# Get prompt design
  source ~/dotfiles/zsh/prompt.sh

# Get standard profile settings
  source /etc/profile
