#include "hip/hip_runtime.h"

__global
void myKernel(int N, double *d_a)
{
    int i = threadIdx.x + blockIdx.x*blockDim.x;
    if (i < N)
    {
        d_a[i] *= 2.0;
    }
}

int main()
{
    int N = 1000;
    size_t Nbytes = N * sizeof(double);
    double *h_a = (double *) malloc(Nbytes);
    double *d_a = NULL;
    HIP_CHECK(hipMalloc(&d_a, Nbytes));
    
    HIP_CHECK(hipMemCpy(d_a, h_a, Nbytes, hipMemcpyHostToDevice));
    
    hipLaunchKernelGGL(myKernel,
            dim3((N + 256 - 1) / 256, 1, 1),
            dim3(256, 1, 1),
            0,
            0,
            N,
            d_a
            );

    HIP_CHECK(hipGetLastError());

    HIP_CHECK(hipMemCpy(h_a, d_a, Nbytes, hipMemcpyDeviceToHost));

    free(h_a);
    HIP_CHECK(hipFree(d_a));
}
