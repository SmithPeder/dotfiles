# Add the local comletions folder to the global completion folder
export fpath=($COMPLETIONS $fpath)

if [[ ! -d $COMPLETIONS ]]; then
  mkdir $COMPLETIONS
fi

# Docker completion
if [[ ! -f $COMPLETIONS/_docker ]]; then
  echo "Installing docker completion"
  curl -fLo $COMPLETIONS/_docker https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker
fi

# Docker-compose completion
if [[ ! -f $COMPLETIONS/_docker-compose ]]; then
  echo "Installing docker-compose completion"
  curl -fLo $COMPLETIONS/_docker-compose https://raw.githubusercontent.com/docker/compose/1.24.0/contrib/completion/zsh/_docker-compose
fi

# Yarn completion
if [[ ! -f $COMPLETIONS/_yarn ]]; then
  echo "Installing yarn completion"
  curl -fLo $COMPLETIONS/_yarn https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/yarn/_yarn 
fi

# Redis completion
if [[ ! -f $COMPLETIONS/_redis-cli ]]; then
  echo "Installing redis completion"
  curl -fLo $COMPLETIONS/_redis-cli https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/redis-cli/_redis-cli
fi

# Completion
if [[ -f $HOME/.zcompdump ]]; then
  last_comp_dump=$(date -r $HOME/.zcompdump +%s)
  current_time=$( date +%s )
  autoload -Uz compinit
  if (( last_comp_dump < (current_time-(60*60*24)) )); then
    autoload -Uz compdump
    compinit
    compdump
  else
    compinit -C
  fi
else
  autoload -Uz compinit
  compinit
fi
