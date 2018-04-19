#!/bin/bash
scriptDir="${0%/*}"
source $scriptDir/createMultiVars.sh
mv testresults.xml $CIRCLE_TEST_REPORTS/
for var in "$@"
do
    if [[ $var == lib* ]] ;
    then
        var=$var$LIB_POSTFIX.a
    fi
    mv $var $CIRCLE_ARTIFACTS/
done
