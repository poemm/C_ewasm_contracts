#!/usr/bin/env bash

#
# This script should be called/sourced from another script which defined various variables like HERA_DIR
# WARNING: this file downloads lot of stuff and may take a while
#


# print commands as executing, useful for debugging and copy/pasting
set -x


# this should return linux or darwin, which is how hera and testeth releases
OS_NAME=$(uname -s | tr '[:upper:]' '[:lower:]')

if [ ! -d $HERA_DIR ]; then
  # compile or download, set this to true or false (eg 1 -eq 0 is false, 1 -eq 1 is true)
  if [ 1 -eq 0 ]; then
    mkdir $HERA_DIR && cd $HERA_DIR
    echo downloading  https://github.com/ewasm/hera/releases/download/v0.2.2/hera-0.2.2-${OS_NAME}-x86_64.tar.gz
    wget https://github.com/ewasm/hera/releases/download/v0.2.2/hera-0.2.2-${OS_NAME}-x86_64.tar.gz
    tar -xvzf *.tar.gz
  else
    git clone https://github.com/ewasm/hera.git $HERA_DIR
    cd $HERA_DIR
    git submodule update --init
    mkdir build && cd build
    cmake -DBUILD_SHARED_LIBS=ON -DHERA_DEBUGGING=OFF -DHERA_WAVM=ON -DHERA_WABT=ON ..
    # might need dependency: sudo apt-get install zlib1g-dev
    make -j4
  fi
fi


if [ ! -d $TESTETH_DIR ]; then
  # we get aleth instead of testeth because aleth includes testeth and is maintained closer to ewasm stuff
  # compiling aleth takes long and bloats your system, so we just downalod binaries
  mkdir $TESTETH_DIR && cd $TESTETH_DIR
  # this step gets your OS name, either linux or darwin, and downloads a specific version of aleth
  # this step may have bugs, may be better to do manually
  # visit https://github.com/ethereum/aleth/releases/ and copy the tarball url for your system (linux or darwin)
  echo downloading  https://github.com/ethereum/aleth/releases/download/v1.6.0/aleth-1.6.0-${OS_NAME}-x86_64.tar.gz
  wget https://github.com/ethereum/aleth/releases/download/v1.6.0/aleth-1.6.0-${OS_NAME}-x86_64.tar.gz
  tar -xvzf *.tar.gz
fi


if [ ! -d $TEST_DIR ]; then
  # warning: over 100 MB
  git clone https://github.com/ewasm/tests.git $TEST_DIR
fi


# don't do this since hera must be compiled, and it compiles binaryen
if [ 0 -eq 1 ] && [ ! -d $BINARYEN_DIR ] && [ ! -d $BINARYEN_DIR ]; then
  mkdir $BINARYEN_DIR && cd $BINARYEN_DIR
  if [ $OS_NAME == linux ]; then
    wget https://github.com/WebAssembly/binaryen/releases/download/version_81/binaryen-version_81-x86_64-linux.tar.gz
    tar -xvzf *.tar.gz
    mv binaryen-version_81 bin
  else
    wget https://github.com/WebAssembly/binaryen/releases/download/version_81/binaryen-version_81-x86_64-apple-darwin.tar.gz
    tar -xvzf *.tar.gz
    mv binaryen-version_81 bin
  fi
fi


