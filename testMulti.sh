#!/bin/bash
scriptDir="${0%/*}"
source $scriptDir/createMultiVars.sh
bash $scriptDir/build.sh
bash $scriptDir/run.sh ${1}
