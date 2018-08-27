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

# Git checkout master
  git_checkoutMaster() {
    git checkout master;
  }
  alias gcm="git_checkoutMaster"

# Git branch
  git_branch() {
    git branch;
  }
  alias gb="git_branch"

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
