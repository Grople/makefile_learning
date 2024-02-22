cc=gcc
all : main test
main : main.o add.o sub.o max.o 
test : test.o max.o
main.o:
add.o:
sub.o:
max.o:
clean:
	rm *.o main test