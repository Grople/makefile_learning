all: hello_mpi, hello_omp, hello_cuda

hello_mpi:hello_mpi.cpp
	mpic++ -o hello_mpi hello_mpi.cpp

hello_omp:
	g++ -fopenmp -o hello_omp hello_omp.cpp

hello_cuda: hello_cuda.cu
	nvcc -o hello_cuda hello_cuda.cu



.PHONY: clean  //伪造的, 不管有没有clean文件都会执行
			  // 如果没有.PHONY, 当创建了clean文件的时候就会报错, 不能执行

clean:
	rm -f kernel_test1