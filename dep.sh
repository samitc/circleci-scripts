#!/bin/bash
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install -y gcc-6 g++-6 python3 git gcc-6-multilib g++-6-multilib
sudo update-alternatives --install "/usr/bin/gcc" "gcc" "/usr/bin/gcc-6" 100
sudo update-alternatives --install "/usr/bin/g++" "g++" "/usr/bin/g++-6" 100
