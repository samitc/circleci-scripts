#!/bin/bash
if [[ -v CIRCLE_COMPARE_URL ]] ;
then
  scriptName="$1"
  shift
  bash $scriptName $@
fi
