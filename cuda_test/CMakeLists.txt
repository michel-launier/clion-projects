cmake_minimum_required(VERSION 3.17)
set(CMAKE_CUDA_COMPILER /usr/local/cuda/bin/nvcc)
project(untitled CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(untitled main.cu)

set_target_properties(
        untitled
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)