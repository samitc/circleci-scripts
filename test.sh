#!/bin/bash
scriptDir="${0%/*}"
bash $scriptDir/build.sh
bash $scriptDir/run.sh ${1}
