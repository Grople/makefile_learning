cc=nvcc

kernel_test1: kernel_test1.cu
	nvcc -o kernel_test1 kernel_test1.cu

cc=gcc

.PHONY: clean  //伪造的, 不管有没有clean文件都会执行
			  // 如果没有.PHONY, 当创建了clean文件的时候就会报错, 不能执行

clean:
	rm -f kernel_test1