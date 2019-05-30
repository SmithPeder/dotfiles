# ====ALIAS-CONFIGURATION====

# Pre-compiled vim
  alias vim="VIMRUNTIME=~/dotfiles/vim/vimcompiled/vim/runtime ~/dotfiles/vim/vimcompiled/vim/src/vim"

# Run list when directory changes
  function chpwd() {
    exa --all
  }

# Exa ls
  alias ls="exa --all"
  alias l="exa --long --all --header --git"
  alias tree="exa --tree --level=3"

# Go back
  alias ..="cd .."

# Git add
  alias ga="git add -A"

# Git commit
  alias gc="git commit"

# Git status
  alias gs="git status"

# Git push
  alias gp="git push"

# Git checkout master
  alias gcm="git checkout master"

# Git checkout new branch
  alias gcn="git checkout -b" 

# Git branch
  alias gb="git branch"

# Django runserver
  alias runserver="./manage.py runserver"

# Django make migrations
  alias makemigrations="./manage.py makemigrations"

# Django migrate
  alias migrate="./manage.py migrate"

# Cat with color
  alias cat="ccat"
