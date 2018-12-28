# Custom list with colorls gem
  alias ls="colorls --sd -a -1"
  alias l="ls"
  
  # Run list when directory changes
  function chpwd() {
    ls
  }

# Git add
  alias ga="git add -A"

# Git commit
  alias gc="git commit"

# Git status
  alias gs="git status"

# Git push
  alias gp="git push"

# Git diff
  alias gd="git diff"

# Git checkout master
  alias gcm="git checkout master"

# Git checkout new branch
  alias gcn"git checkout -b" 

# Git branch
  alias gb="git branch"

# Django runserver
  alias mr="./manage.py runserver"

# Django make migrations
  alias mmm="./manage.py makemigrations"

# Django migrate
  alias mm="./manage.py migrate"

# Django init dev
  alias minit"./manage.py initialize_development"

