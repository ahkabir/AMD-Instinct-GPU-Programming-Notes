# CUDA code example
daxpy.cu:
This is an example provided in Computer Architecture book 6th edition.
I took the example and
- converted to a compile-able and runnable CUDA code.
- provided architectural explanation for the CUDA kernel

For explaning the daxpy.cu CUDA code, we consider a hypothetical
GPU with the following characteristics:
-There is just one Grid
-In a Grid, there are 4 Thread Blocks
-Each Thread Block has 256 CUDA Threads

daxpy is a matrix addition problem:

| y0    |        | x0    |    | y0    |
| y1    |        | x1    |    | y1    |
| y2    |  = a * | x2    |  + | y1    |
| ..    |   ..   | ..    |    | ..    |
| ..    |   ..   | ..    |    | ..    |
| y1024 |        | x1024 |    | y1024 |

n = number of elements, there are a total of 1024 elements
Thread Block (TB)number = (n + 255) / 256

n    | TB number
----------------
1    | 1
2    | 1
..
256  | 1
----------------
257  | 2
258  | 2
..
512  | 2
----------------
513  | 3
514  | 3
..
768  | 3
----------------
769  | 4
770  | 4
..
1024 | 4
----------------

The following line from the CUDA code:

int i = blockIdx.x * blockDim.x + threadIdx.x

can be explained with this table:

x,block | blockIdx.x | blockDim.x | blockIdx.x * blockDim.x | x,thread | threadIdx.x | i
------------------------------------------------------------------------------------------
 0      |    0       |    0       |            0            |    0     |     0       | 0
        |            |            |                         |    1     |     1       | 1

        |            |            |                         |    255   |     255     | 255
-------------------------------------------------------------------------------------------
 1      |    1       |    256     |           256           |    0     |     0       | 256
        |            |            |                         |    1     |     1       | 257

        |            |            |                         |    255   |     255     | 511
-------------------------------------------------------------------------------------------
 2      |    2       |    512     |           512           |    0     |     0       | 512
        |            |            |                         |    1     |     1       | 513

        |            |            |                         |    255   |     255     | 767
-------------------------------------------------------------------------------------------
 3      |    3       |    768     |           768           |    0     |     0       | 768
        |            |            |                         |    1     |     1       | 769

        |            |            |                         |    255   |     255     | 1023
-------------------------------------------------------------------------------------------

From the above table we can clearly see that each daxpy row computation of element (i)
are computed by a separate CUDA thread. And the CUDA threads all run in parallel. So,
essentially, the entire daxpy is completed in one cycle of the GPU.



