#!/bin/bash
sudo mkdir /cmake
wget https://cmake.org/files/v3.8/cmake-3.8.0-Linux-x86_64.sh
sudo sh cmake-3.8.0-Linux-x86_64.sh --prefix=/cmake --skip-license
sudo update-alternatives --install "/usr/bin/cmake" "cmake" "/cmake/bin/cmake" 100
