#!/bin/bash

set -e

BASE=$(realpath $(dirname "$0"))
BUILD_DIR=${BASE}/cmake-build
INSTALL_DIR=${BASE}/cmake-local

PROTOBUF_DIR=$(spack location -i protobuf)
ABSEIL_CPP_DIR=$(spack location -i abseil-cpp~shared)
LIBPRIM_DIR=$(spack location -i libprim)
LIBCOLHASH_DIR=$(spack location -i libcolhash)
LIBFACTORY_DIR=$(spack location -i libfactory)
LIBRND_DIR=$(spack location -i librnd)
LIBMUT_DIR=$(spack location -i libmut)
LIBBITS_DIR=$(spack location -i libbits)
LIBSTROP_DIR=$(spack location -i libstrop)
LIBFIO_DIR=$(spack location -i libfio)
LIBSETTINGS_DIR=$(spack location -i libsettings)
NLOHMANN_JSON_DIR=$(spack location -i nlohmann-json)
ZLIB_DIR=$(spack location -i zlib)
PARAGRAPH_CORE_DIR=$(spack location -i paragraph-core)
CMAKE_DIR=$(spack location -i cmake)

INSTALL_RPATH="${INSTALL_DIR}/lib;${INSTALL_DIR}/lib64;${ABSEIL_CPP_DIR}/lib;${LIBPRIM_DIR}/lib;${LIBCOLHASH_DIR}/lib;${LIBFACTORY_DIR}/lib;${LIBRND_DIR}/lib;${LIBMUT_DIR}/lib;${LIBBITS_DIR}/lib;${LIBSTROP_DIR}/lib;${LIBFIO_DIR}/lib;${LIBSETTINGS_DIR}/lib;${NLOHMANN_JSON_DIR}/lib;${PROTOBUF_DIR}/lib;${PARAGRAPH_CORE_DIR}/lib;${ZLIB_DIR}/lib"
PREFIX_PATH="${ABSEIL_CPP_DIR};${LIBPRIM_DIR};${LIBCOLHASH_DIR};${LIBFACTORY_DIR};${LIBRND_DIR};${LIBMUT_DIR};${LIBBITS_DIR};${LIBSTROP_DIR};${LIBFIO_DIR};${LIBSETTINGS_DIR};${NLOHMANN_JSON_DIR};${PROTOBUF_DIR};${PARAGRAPH_CORE_DIR};${ZLIB_DIR}"

CMAKE=${CMAKE_DIR}/bin/cmake

mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR} && ${CMAKE} \
    -G 'Unix Makefiles' \
    -DCMAKE_INSTALL_PREFIX:STRING=${INSTALL_DIR} \
    -DCMAKE_BUILD_TYPE:STRING=RelWithDebInfo \
    -DCMAKE_INTERPROCEDURAL_OPTIMIZATION:BOOL=OFF \
    -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
    -DCMAKE_INSTALL_RPATH_USE_LINK_PATH:BOOL=OFF \
    -DCMAKE_INSTALL_RPATH:STRING=${INSTALL_RPATH} \
    -DCMAKE_PREFIX_PATH:STRING=${PREFIX_PATH} \
    ..
cd ${BUILD_DIR} && make -j $(nproc) all && make install

echo ""
echo "Build successful :)"
echo ""
