@REM Configure the build of phreeqc4rkt
mkdir build
cd build
cmake -GNinja ..                            ^
    -DCMAKE_BUILD_TYPE=Release              ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_INCLUDE_PATH=%LIBRARY_INC%      ^
    -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=ON   ^
    -DCMAKE_VERBOSE_MAKEFILE=ON

@REM Build and install phreeqc4rkt in %LIBRARY_PREFIX%
ninja install
