
// Assume we have 256 threads per Thread Block
__host__
int nblocks = (n + 255) / 256;
daxpy<<nblocks, 256>>>(n, 2.0, x, y);
__global__
void daxpy(int n, double a, double *x, double *y)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) y[i] = a * x[i] + y[i];
}
