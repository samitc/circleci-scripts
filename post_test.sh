#!/bin/bash
cp testresults.xml $CIRCLE_TEST_REPORTS/
for var in "$@"
do
    mv $var $CIRCLE_ARTIFACTS/
done
