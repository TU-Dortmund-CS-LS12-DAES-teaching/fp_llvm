#!/bin/bash

Solution0="Hello World from Module: /workspaces/fp_llvm/test/fft1.ll"

clean() {
  echo "==== Cleaning build folder ===="
  rm -rf build/
  rm compile_commands.json
}

config() {
  echo "==== Crating build folder ===="
  mkdir build
  cd build
  echo "==== Configuring cmake ===="
  cmake -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -G Ninja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DLT_LLVM_INSTALL_DIR=$LLVM_DIR ..
  cd ..
  cp build/compile_commands.json compile_commands.json
  echo "==== Generating test files from source ===="
  cd test
  clang -O0  -Xclang -disable-O0-optnone -emit-llvm -S src/*.c
  cd ..
  echo "==== Done! ===="
}

compile() {
  cd build
  echo "==== Compiling Project ===="
  ninja
  cd ..
  echo "==== Done! ===="
}

run() {
  echo "==== Running $1 ===="
  opt -load-pass-plugin build/lib/libFpPass.so \
    -passes='lru-misses(function(loop-unroll-and-jam))' \
    test/$1.ll -o /dev/null
  #llvm-dis < out.bc > out.ll
}

test() {
  ./build/bin/UnitTest --gtest_brief=1
}

ex0() {
  #echo "==== Running $1 ===="
  OUT="$(opt -load-pass-plugin build/lib/libFpPass.so \
    -passes='lru-misses(function(loop-unroll-and-jam))' \
    /workspaces/fp_llvm/test/fft1.ll -o /dev/null)"
  if [ "$OUT" = "$Solution0" ]; then
    echo "Exercise 0 Passed!"
  else
    echo $OUT
    echo $Solution0
    exit 1
  fi

  #llvm-dis < out.bc > out.ll
}

allBenchs=("adpcm"
  "bs"
  "bsort100"
  "cnt"
  "compress"
  "cover"
  "crc"
  "dijkstra"
  "duff"
  "edn"
  "expint"
  "fdct"
  "fft1"
  "fibcall"
  "fir"
  "hello"
  "insertsort"
  "janne_complex"
  "jfdctint"
  "lcdnum"
  "lms"
  "ludcmp"
  "matmult"
  "minver"
  "ndes"
  "nsichneu"
  "ns"
  "prime"
  "qsort-exam"
  "qurt"
  "recursion"
  "select"
  "sqrt"
  "statemate"
  "ud"
  "whet"
)

runall() {
  for str in ${allBenchs[@]}; do
    echo
    run $str
  done
}

autogradesetup() {
  wget https://apt.llvm.org/llvm.sh
  chmod +x llvm.sh
  sudo ./llvm.sh 14
  sudo apt update
  sudo apt install cmake ninja-build
  export LLVM_DIR=/usr/lib/llvm-14
  clean
  config
  compile
}

case $1 in
ex0)
  ex0
  ;;
as)
  autogradesetup
  ;;
clean)
  clean
  ;;
config)
  config
  ;;
c | compile)
  compile
  ;;
cr)
  compile
  if [ $2 ]; then
    run $2
  else
    echo "==== Please provide name of the test as second argument! ===="
  fi
  ;;
r | run)
  if [ $2 ]; then
    run $2
  else
    echo "==== Please provide name of the test as second argument! ===="
  fi
  ;;
t | test)
  test
  ;;
ra | runall)
  runall
  ;;
docker)
  docker build -t rtsalab01cacheanalysis:latest .
  docker run -i -d -v "$(pwd)"/.:/root:rw --name RTSAlab01 rtsalab01cacheanalysis
  ;;
evaluation | eval)
  run "crc"
  echo "==== Correct crc ===="
  echo "MustHits: 90"
  echo
  run "cnt"
  echo "==== Correct cnt ===="
  echo "MustHits: 28"
  echo
  run "duff"
  echo "==== Correct duff ===="
  echo "MustHits: 78"
  echo
  run "fft1"
  echo "==== Correct fft1 ===="
  echo "MustHits: 74"
  echo
  run "insertsort"
  echo "==== Correct insertsort ===="
  echo "MustHits: 61"
  echo
  run "matmult"
  echo "==== Correct matmult ===="
  echo "MustHits: 34"
  echo
  ;;
a | all)
  clean
  config
  cd build
  ninja
  echo "==== Done! ===="
  ;;
*)
  if [ $1 ]; then
    echo "Unknown argument: $1"
  fi
  echo "Please provide one of the following arguments:"
  echo "  clean               Deletes the build folder"
  echo "  config              Creates build folder and configures build System"
  echo "  docker              Build and Run Docker container for development"
  echo "  eval                Run a subset of tests for evaluation of your implementation"
  echo "  c | compile             Compiles the Project"
  echo "  a | all                 Cleans, configures and compiles the project"
  echo "  r | run [name]          Run pass on test/[name] from the test folder"
  echo "  cr [name]               Compile and run pass on test/[name] from the test folder"
  echo "  ra | runall              Run pass on all tests from the test folder"
  echo "  t | test                 Execute Unit tests, only test that Fail are printed."
  exit
  ;;
esac
