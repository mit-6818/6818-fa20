#!/bin/bash

P4_ROOT=$1
TEST_DIR=$2

for filename in $TEST_DIR/t*.cpp; do
  rm -f a.out
  g++ -std=c++17 -O2 -I$P4_ROOT/gc $filename
  ./a.out
  if [ $? == 0 ]; then
    echo "Passed" $filename
  else
    echo "Failed" $filename
  fi
done
rm -f a.out
