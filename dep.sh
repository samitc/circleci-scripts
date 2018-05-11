#!/bin/bash
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install -y gcc-8 g++-8 python3 git gcc-8-multilib g++-8-multilib
sudo update-alternatives --install "/usr/bin/gcc" "gcc" "/usr/bin/gcc-8" 100
sudo update-alternatives --install "/usr/bin/g++" "g++" "/usr/bin/g++-8" 100
