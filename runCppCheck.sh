#!/bin/bash
sudo apt-get install -y cppcheck
cppcheck --enable=all --inconclusive --xml --xml-version=2 $@ 2> cppcheck.xml
mkdir -p $CIRCLE_ARTIFACTS/cppcheck/
mv cppcheck.xml $CIRCLE_ARTIFACTS/cppcheck/
