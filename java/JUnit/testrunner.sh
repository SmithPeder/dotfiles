# Run Java Tests
  javat() {
    echo Remove old class files...
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
