#!/bin/bash

mkdir build_release
cd build_release

cmake ${CMAKE_ARGS} \
    -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${PREFIX}" \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DSUFFIX_BIN="" \
    -DSUFFIX_LIB="" \
    -DBUILD_TEST=0 \
    -DBUILD_KTEST=0 \
    -DBUILD_CLIENT=0 \
    -DBUILD_CALLBACK_CLIENT=0 \
    -DBUILD_EXAMPLES=0 \
    -DOPENCL_ROOT="${PREFIX}" \
    "${SRC_DIR}/src"

make -j${CPU_COUNT}
make install
