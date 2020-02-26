if [[ ! -d $PLUGINS ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $PLUGINS/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-completions.git $PLUGINS/zsh-completions
  git clone https://github.com/superbrothers/zsh-kubectl-prompt.git $PLUGINS/zsh-kubectl-prompt
  git clone https://github.com/romkatv/powerlevel10k.git $PLUGINS/powerlevel10k
  git clone https://github.com/romkatv/gitstatus.git $PLUGINS/gitstatus
fi

source_plugin() {
  [[ -d $PLUGINS/$1 ]] && source $PLUGINS/$1/$1.plugin.zsh
}

# These plugins have the same name schema
source_plugin zsh-autosuggestions
source_plugin zsh-syntax-highlighting
source_plugin zsh-completions
source_plugin zsh-kubectl-prompt

# These plugins need custom source
[[ -d $PLUGINS/$1 ]] && source $PLUGINS/powerlevel10k/powerlevel10k.zsh-theme
[[ -d $PLUGINS/$1 ]] && source $PLUGINS/gitstatus/gitstatus.prompt.zsh
