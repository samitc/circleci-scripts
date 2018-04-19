#!/bin/bash
if [ "$CIRCLE_NODE_INDEX" = "0" ]; then echo "build release x86";export BUILD_TYPE=Release;export CXXFLAGS=-m32;export CPPFLAGS=-m32;export CFLAGS=-m32;fi # release 32 bit build
if [ "$CIRCLE_NODE_INDEX" = "1" ]; then echo "build release x64";export BUILD_TYPE=Release;fi # release 64 bit build
if [ "$CIRCLE_NODE_INDEX" = "2" ]; then echo "build debug x86";export BUILD_TYPE=Debug;export LIB_POSTFIX=d;export CXXFLAGS=-m32;export CPPFLAGS=-m32;export CFLAGS=-m32;fi # debug 32 bit build
if [ "$CIRCLE_NODE_INDEX" = "3" ]; then echo "build debug x64";export BUILD_TYPE=Debug;export LIB_POSTFIX=d;fi # debug 64 bit build
