#!/bin/bash
if [[ ! -v BUILD_TYPE ]] ;
then
  cmake CMakeLists.txt $@
else
  cmake CMakeLists.txt -DCMAKE_BUILD_TYPE=$BUILD_TYPE $@
fi
make
