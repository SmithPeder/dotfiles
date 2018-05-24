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

# Import .jar files for JUnit tests, should always be run from root
  javat() {
    echo Remove old files...
    rm *.class || echo No class files to remove in root
    rm tests/*.class || echo No class files to remove in tests

    echo Creating test folder...
    mkdir tests || echo Test folder allready exist
    
    echo Moving all test files to the testfolder...
    mv *Test* /tests || echo No test files detected in root

    echo Compiling soruce code...
    f=$(javac *.java -d tests)
    if [[ $? != 0 ]]; then
      echo Compiling of soruce code failed...
    else
      echo Compiling of soruce code success...
      cd tests
      echo Compiling test code...
      f=$(javac *.java)
      if [[ $? != 0 ]]; then
        echo Compiling of test code failed...
      else
        echo Compiling of test code success...
        echo Running test code...
        for f in *Test*.class
        do
        echo Running test: ${f%.*}
        java org.junit.runner.JUnitCore ${f%.*}
        done
        rm *.class
      fi
      cd ..
    fi
  }


# Soruce local bindings that should not be on comitted
  source ~/dotfiles/zsh/bind_local.sh
