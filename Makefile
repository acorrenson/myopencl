all: test

test: ./csrc/myopencl.c
	@gcc -Wall -Werror -o test ./csrc/myopencl.c -lOpenCL

clean:
	@rm test