# AMD-Instinct-GPU-Programming-Notes
Major use cases where AMD Instinct GPU is considered are AI/ML
compute and HPC compute. For a beginner like me who has knowledge
of SIMD engines and fair idea of GPU architecture, getting up to
speed with AMD Instict GPU is not that easy.

In order to ramp up on it quickly, I have explored various topics
so that programming AMD Instict GPU becomes easier and I understand
the bigger picture, as to why to use the Instict GPU, how it can
help a certain use case and so on.

First, I try to quickly ramp up on Cloud computing and HPC computing.
For Cloud computing the subfolder has all the details about the
resources that I used to feel comfortable running AI workload
in the Google Cloud for example. I explore HPC computing as well.
This exploration was relatively easier as I am comfortable with
Linux from the standpoint of using command lines etc.

Once the use-cases are understood, I then explored the parallel
programming languages for GPUs like CUDA, OpenCL and HIP, HIP
being AMD's GPU programming languages. For each of this subject
I have separate folders where I documented all the resources
that I have used to get up to speed.

Finally, I dived into the ROCm ecosystem of AMD. The knowledge
of ROCm is a MUST when you are dealing with AMD Instict GPU.



Details about ROCm and HIP programming:
https://www.youtube.com/watch?v=oq-StJbODY8&t=777s

ROCm installation (video + other requirements)
https://www.youtube.com/watch?v=BZMZ3351KDs&t=440s
https://phazertech.com/tutorials/rocm.html


Introduction to GPU, CUDA and OpenCL
https://www.youtube.com/watch?v=CdPd5TwM0mI

ROCm: AMD's platform for GPU computing
https://www.youtube.com/watch?v=oq-StJbODY8&t=777s
HIP@19:00

Introduction to HPC Computing A Practical Tutorial, Marco Verdicchio, SURFsara 
https://www.youtube.com/watch?v=fkpofukvGeg&t=281s

What is High Performance Computing? Google Cloud Tech
https://www.youtube.com/watch?v=nIBu1EFYmBU
cloud.google.com/hpc

AMD Accelerator Cloud
allows to use AMD GPUs in the cloud
signup required and does not work with gmail

CUDA Installation:
Ubuntu 22.04, kernel 6.2.0-26, gcc 11.4.0, glibc 2.35
x86_64 gcc 6.x-12.2, Clang 7.x-16.0
C++20 is supported for: x86_64: gcc >= 10.x, clang >= 11.x

CUDA installation methods: (1) distro specific or (2) distro independent runfile packages




