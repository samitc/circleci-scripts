#!/bin/bash
scriptDir="${0%/*}"
source $scriptDir/createMultiVars.sh
if [ "$BUILD_ARCH" = "32" ]; then
    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo apt-get install -y libc6-dbg:i386
fi
sudo apt-get install -y valgrind
valgrind --log-file=%pvalgrind.log -v -v --tool=memcheck --child-silent-after-fork=no --track-fds=yes --time-stamp=no --xml=no --num-callers=100 --error-exitcode=1 --fullpath-after=src/ --time-stamp=yes --leak-check=full --leak-resolution=high --show-leak-kinds=all --errors-for-leak-kinds=all --leak-check-heuristics=all --undef-value-errors=yes --show-mismatched-frees=yes $@
mkdir -p $CIRCLE_ARTIFACTS/valgrind
cp *valgrind* $CIRCLE_ARTIFACTS/valgrind
