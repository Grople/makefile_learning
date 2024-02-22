cc=gcc
all:main test cleanobj
X=main.o  add.o sub.o max.o
Y=test.o max.o
VPATH=.:./lib
main:$(X)
test:$(Y)
$(X):
$(Y):

.PHONY: clean  //伪造的, 不管有没有clean文件都会执行
			  // 如果没有.PHONY, 当创建了clean文件的时候就会报错, 不能执行

clean:
	rm *.o main test
cleanobj:
	rm *.o