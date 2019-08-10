mkdir out
cd out
cmake -G "NMake Makefiles" ^
      -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
      -DCMAKE_EXE_LINKER_FLAGS="-pthread -lrt" ^
      ..
nmake
nmake install
