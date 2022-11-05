# ====ALIAS-CONFIGURATION====

# Exa ls
  alias ls="exa --all"
  alias l="exa --long --all --header --git"
  alias tree="exa --tree --level=3"

# Vim
  alias vim="nvim"

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

# Git log
  alias gl="git log --oneline"

# Git log
  alias gd="git diff"

# Git checkout master
  # alias gcm="git checkout master"
  alias gcm="git checkout main"

# Git checkout new branch
  alias gcn="git checkout -b"

# Git branch
  alias gb="git branch"

# Django runserver
  alias runserver="./manage.py runserver 0.0.0.0:8000"

# Django make migrations
  alias makemigrations="./manage.py makemigrations"

# Django migrate
  alias migrate="./manage.py migrate"

# Shell pluss
  alias shell="./manage.py shell_plus"

# Cat with color
  alias cat="ccat"

# Docker ps
  alias ds="docker ps --format 'table {{.ID}}\\t{{.Names}}\t{{.Status}}'"

# Docker-compose
  alias d-c="docker-compose"

# Ansible
  alias ap="ansible-playbook"
  alias av="ansible-vault"

# Go to dotfiles
  alias dotfiles="cd ~/dotfiles"

# Take json from clipboard, fix and paste back
  alias jsontidy="pbpaste | jq '.' | pbcopy"

# Jump to tienda
  alias tienda="cd ~/code/oda/tienda"
  alias web="cd ~/code/oda/tienda-web"

  alias mat="echo '\e[0;31mNY28:\033[0m' && curl -s https://portal.ny28.no/wp-content/uploads/meny28.pdf | pdftotext - - && echo '\e[0;31mNY24:\033[0m' && curl -s https://www.ny24.no/api/fetch/$(date '+%u') | jq"

  alias fixshell="stty sane"
