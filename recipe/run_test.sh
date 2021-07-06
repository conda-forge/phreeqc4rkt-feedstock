#!/bin/sh

# Build and execute C++ test application using Optima
cd test/app
cmake -GNinja -S . -B build -DCMAKE_PREFIX_PATH=$PREFIX
cmake --build build
cmake --build build --target execute-app
