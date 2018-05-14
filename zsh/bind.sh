# Git add all, commit and push
  function git_prepare() {
    if [ -n "$BUFFER" ];
    then
      BUFFER="git add -A; git commit -m \"$BUFFER\""
    fi

    if [ -z "$BUFFER" ];
    then
      BUFFER="git add -A; git commit -v"
    fi       
    zle accept-line
  }
  zle -N git_prepare
  bindkey "^g" git_prepare

# Git add
  git_add() {
    git add -A;
  }
  alias ga="git_add"

# Git commit
  git_commit() {
    git commit;
  }
  alias gc="git_commit"

# Git status
  git_status(){
    git status;
  }
  alias gs="git_status"

# Git push
  git_push(){
    git push;
  }
  alias gp="git_push"

# Git diff
  git_diff() {
      git diff;
  }
  alias gd="git_diff"

# Go to home
  function goto_home() { 
    BUFFER="cd ~/"$BUFFER
    zle end-of-line
    zle accept-line
  }
  zle -N goto_home
  bindkey "^h" goto_home

# Custom cd
  c() {
    cd $1;
  }
  alias cd="c"

# Custom list
  list() {
    ls -a -1;
  }
  alias l="list"

# Run list when directory changes
  function chpwd() {
    ls -a -1
  }

# Soruce local bindings that should not be on comitted
  source ~/dotfiles/zsh/bind_local.sh
