all:main test  # //顺序无所谓
main:main.o add.o sub.o max.o  # //main生成所需要的.o文件
	gcc -o main main.o add.o sub.o max.o # //生成main的规则
test:test.o max.o
	gcc -o test test.o max.o
main.o:main.c       # //mian.o文件生成所需要的mian.c文件(程序员写的，所以不用声明它的规则）
	gcc -c main.c
test.o:test.c
	gcc -c test.c
add.o:add.c
	gcc -c add.c
sub.o:sub.c
	gcc -c sub.c
max.o:max.c
	gcc -c max.c
clean:          # //需要手动调用
	rm *.o main test