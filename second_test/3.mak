cc=gcc

all: hello_mpi hello_omp

hello_mpi:hello_mpi.o
hello_mpi.o:

hello_omp:hello_omp.o
hello_omp.o:

cc=nvcc

hello_cuda: hello_cuda.cu
	nvcc -o hello_cuda hello_cuda.cu


.PHONY: clean  //伪造的, 不管有没有clean文件都会执行
			  // 如果没有.PHONY, 当创建了clean文件的时候就会报错, 不能执行

clean:
	rm -f kernel_test1