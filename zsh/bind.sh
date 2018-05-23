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
    # Remove all old .class files
    rm *.class tests/*.class build/*.class
    # Try to create a test folder to hold Test.java files
    mkdir tests
    mv *Test* tests
    # Try to create a build folder to hold .class files
    mkdir build
    # Compile all java code in root and put them in tests
    javac *.java -d tests
    # Move into tests and import the junit jar
    cd tests
    # Get test directory
    cp ~/JUnit/junit-4.12.jar $PWD
    # Compile all test files using junit
    for f in ./*.java
    do
    javac -cp .:junit-4.12.jar $f
    done
    # Move all .class files from test to build
    mv *.class ../build
    # Remove the junit.jar from this directory
    rm -rf junit-4.12.jar
    # Head over to the build folder
    cd ../build
    # Get junit and hamcrest
    cp ~/JUnit/hamcrest-core-1.3.jar $PWD
    cp ~/JUnit/junit-4.12.jar $PWD
    # Run each test file
    for f in *Test*.class
    do
    java -cp .:junit-4.12.jar:hamcrest-core-1.3.jar org.junit.runner.JUnitCore ${f%.*}
    done
    cd ..
    #Remove the build folder
    rm -rf build
  }


# Soruce local bindings that should not be on comitted
  source ~/dotfiles/zsh/bind_local.sh
