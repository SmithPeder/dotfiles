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
  alias mi"./manage.py initialize_development"

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
    ls -a;
  }
  alias l="list"

# Run list when directory changes
  function chpwd() {
    ls -a -1
  }

# Import .jar files for JUnit tests, should always be run from root
  javat() {
    printf "\n"
    echo Compiling source/test code...
    f=$(javac $(find . -name '*.java') -d $PWD)
    if [[ $? != 0 ]]; then
      echo "Compiling of code failed..."
    else
      echo Compiling of code success...
      for f in *Test*.class
      do
      printf "\n------------------\n"
      echo ${f%.*}
      printf "------------------\n"
      java org.junit.runner.JUnitCore ${f%.*}
      done
      echo Cleaning up...
      rm *.class
    fi
  }
