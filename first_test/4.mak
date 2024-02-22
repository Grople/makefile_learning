cc = gcc

all: main test

X = main.o max.o sub.o add.o
Y = test.o max.o

main: $(X)
test: $(Y)

$(X):
$(Y):

.PHONY: clean  //伪造的, 不管有没有clean文件都会执行
			  // 如果没有.PHONY, 当创建了clean文件的时候就会报错，不能执行
clean:
	rm *.o main test