#!/bin/bash
scriptDir="../${0%/*}"
mkdir gccProf
cd gccProf
rm ../CMakeCache.txt
source $scriptDir/createMultiVars.sh
export CXXFLAGS="$CXXFLAGS -pg";export CFLAGS="$CFLAGS -pg";bash $scriptDir/build.sh ..
./${1} >> ${1}.log
mv gmon.out gmon.sum
for i in `seq 1 9`;
do
  ./${1} >> ${1}.log;gprof -s ./${1} gmon.out gmon.sum
done
gprof ./${1} gmon.sum > gprof.log
mkdir $CIRCLE_ARTIFACTS/gprof
mv gprof.log ${1}.log gmon.sum ${1} $CIRCLE_ARTIFACTS/gprof/
cd ..
