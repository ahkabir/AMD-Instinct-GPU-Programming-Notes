# CUDA Installation:
Ubuntu 22.04, kernel 6.2.0-26, gcc 11.4.0, glibc 2.35 \
x86_64 gcc 6.x-12.2, Clang 7.x-16.0 \
C++20 is supported for: x86_64: gcc >= 10.x, clang >= 11.x\

CUDA installation methods:\
(1) distro specific or\
(2) distro independent runfile packages

# Official CUDA/NVIDIA GPU term
I put the abbreviation within paranthesis after each official
name. This is for the convenience of writing this README.

## Terminologies related to Program abstractions
`Grid (G):`\
A vectorizable loop, executed on the GPU, made up
of one of more Thread Blocks

`Thread Block (TB):`\
A vectorized loop executed on *a* multithreaded SIMD
Processor, made up of one or more threads of SIMD
instructions. They communicate with local memory.

`CUDA Thread (CT):`\
Threads within a TB. A vertical cut of a thread of SIMD
instructions corresponding to one element executed by
one SIMD Lane.

`Warp:`\
A traditional thread, but it only contains SIMD instructions
that are executed on a multithreaded SIMD Processor.

## Terminologies related to Memory hardware
`Global Memory:`\
DRAM memory accessible by all multithreaded SIMD Processors in
a GPU. This is also known as GPU memory.

`Local Memory:`\
Portion of DRAM memory private to each SIMD Lane

`Shared Memory:`\
Fast local SRAM for one multithreaded SIMD Processor,
unavailable to other SIMD Processors.

# CUDA terminologies related to programming
| term | description |
| --- | --- |
| dimGrid | specifies the dimension of the code (in TBs). |
| dimBlock | specifies the dimension of a block (in threads). |
| blockIdx | Identifiers for TBs. |
| threadIdx | Identifier for each thread in a TB. |
| blockDim | The number of threads per block. |

# CUDA APIs
https://docs.nvidia.com/cuda/cuda-runtime-api/index.html

# CUDA C++ programming GUIDE
https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html

# CUDA tutorial
https://cuda-tutorial.readthedocs.io/en/latest/

# An Even Easier Introduction to CUDA
https://developer.nvidia.com/blog/even-easier-introduction-cuda/

# CUDA, OpenCL and GPU
Introduction to GPU, CUDA and OpenCL\
https://www.youtube.com/watch?v=CdPd5TwM0mI


