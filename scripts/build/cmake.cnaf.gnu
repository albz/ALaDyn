#!/bin/bash

module purge

module load compilers/gcc-4.9.2
module load compilers/openmpi-1.8.1_gcc-4.9.0_with_cuda6.5
module load boost_1_56_0_gcc4_9_0

export FC=/shared/software/compilers/gcc-4.9.2/bin/gfortran
export CC=/shared/software/compilers/gcc-4.9.2/bin/gcc
export CXX=/shared/software/compilers/gcc-4.9.2/bin/g++

mkdir -p build ; cd build
cmake .. -DFFTW_ROOT_DIR=/shared/software/project/aladyn/fftw -DBoost_NO_BOOST_CMAKE=ON
cmake --build . --target install
cd ..
