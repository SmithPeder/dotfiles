if [[ ! -d $PLUGINS ]]; then
  mkdir $PLUGINS $PLUGINS/sudo
  curl -fLo $PLUGINS/sudo/sudo.plugin.zsh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/sudo/sudo.plugin.zsh
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $PLUGINS/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-completions.git $PLUGINS/zsh-completions
  git clone https://github.com/superbrothers/zsh-kubectl-prompt.git $PLUGINS/zsh-kubectl-prompt
fi

source_plugin() {
  [[ -d $PLUGINS/$1 ]] && source $PLUGINS/$1/$1.plugin.zsh
}

source_plugin zsh-autosuggestions
source_plugin zsh-syntax-highlighting
source_plugin zsh-kubectl-prompt
source_plugin sudo
