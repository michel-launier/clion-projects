#include <iostream>
#include <cuda_runtime.h>
#include <math.h>
#include <stdlib.h>

#define BLOCKS  1
#define THREADS 128
__global__ void addNums(float* output, float* x, float* y, int iter) {
    // Add several value in this thread
	int step = (iter + THREADS - 1) / THREADS;
	int base = threadIdx.x * step;	
	float result = 0;
	for(unsigned int i= 0; i < step; ++i) {
		int idx = base + i;
		if(idx >= iter) break;
		//result += x[idx] * y[idx];	
		result = __fmaf_rd(x[idx], y[idx], result);	
	}

	// Store result in thread share memory
	__shared__ float tmp[THREADS];
	tmp[threadIdx.x] = result;

	// Wait until all thread have finished their task
	__syncthreads();

    // Accumulate result of all thread if we are thread #0
	if(threadIdx.x == 0) {
		result = 0;
		for(int i= 0; i < THREADS; ++i) {
			result += tmp[i];
		}
		*output = result;
	}
}

#define num_iters 12000000
int main() {
	float *x;
	float *y;
	float *output;

	srand(10);

    // Allocate shared memory
	cudaMallocManaged(&x, num_iters*sizeof(float));
	cudaMallocManaged(&y, num_iters*sizeof(float));
	cudaMallocManaged(&output, sizeof(float));

    // Initialise the input arrays
	*output = 0;
	for(unsigned int i= 0; i < num_iters; ++i) {
		x[i]= 1;
		y[i]= 1;
	}

	std::cout << "Hello World! this is CUDA sample code" << std::endl;
    //int deviceCount;
    //cudaGetDeviceCount(&deviceCount);
	//std::cout << "Device count: " << deviceCount << std::endl;

    // Compute the sum of arrays
	addNums<<<BLOCKS,THREADS>>>(output, x, y, num_iters);
	cudaDeviceSynchronize();

	std::cout << "Sum is: " << *output << std::endl;

    // Release the shared memory
	cudaFree(x);
	cudaFree(y);
	cudaFree(output);

	std::cout << "Code Execution Completed" << std::endl;

	return 0;
}

