#!/bin/bash
scriptDir="${0%/*}"
cd $scriptDir
git rev-parse HEAD
sudo apt-get remove cmake
