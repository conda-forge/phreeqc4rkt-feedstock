#!/bin/sh

# Build and execute C++ test application using Optima
cd test/app
mkdir build
cd build
cmake -GNinja .. -DCMAKE_PREFIX_PATH=$PREFIX
ninja
./app
