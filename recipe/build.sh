#!/bin/bash

# Avoid memory exhaustion during compilation by limiting number of parallel jobs
JOBS=$((CPU_COUNT*2 - 1))

echo "Using $JOBS parallel jobs out of $((CPU_COUNT*2)) available to build phreeqc4rkt."

# Configure the build of phreeqc4rkt
cmake -GNinja -S . -B build ${CMAKE_ARGS} \
    -DCMAKE_BUILD_TYPE=Release

# Build and install phreeqc4rkt in $PREFIX
cmake --build build --target install --parallel $JOBS
