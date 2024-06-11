UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	CCFLAGS += -lOpenCL
endif
ifeq ($(UNAME_S),Darwin)
	CCFLAGS += -framework OpenCL
endif

all: test

test: ./csrc/myopencl.c
	@gcc -Wall -Werror $(CCFLAGS) -o test ./csrc/myopencl.c

clean:
	@rm test