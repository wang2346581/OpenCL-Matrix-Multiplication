CC=gcc
CFLAGS=-g -Wall
LFLAGS=-lOpenCL


all	:	cl_test

execute	:	cl_test
	./cl_test

cl_test	:	main.c
	$(CC) $(CFLAGS) $(LFLAGS) $< -o $@

clean	:	
	rm cl_test
