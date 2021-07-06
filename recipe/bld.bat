@REM Configure the build of phreeqc4rkt
cmake -GNinja -S . -B build ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_INCLUDE_PATH=%LIBRARY_INC% ^
    -DCMAKE_VERBOSE_MAKEFILE=ON

@REM Build and install phreeqc4rkt in %LIBRARY_PREFIX%
cmake --build build --config Release --target install --parallel
