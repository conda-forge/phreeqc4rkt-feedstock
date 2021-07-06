#!/bin/bash

# Configure the build of phreeqc4rkt
mkdir build
cd build
cmake -GNinja .. ${CMAKE_ARGS} \
    -DCMAKE_BUILD_TYPE=Release

# Build and install phreeqc4rkt in $PREFIX
ninja install
