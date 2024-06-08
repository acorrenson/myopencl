#ifndef MY_OPENCL_H
#define MY_OPENCL_H

#include <stdio.h>

#define CL_TARGET_OPENCL_VERSION 120

#if __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif

#define BUFFLEN 1024

typedef struct {
  cl_device_id id;
  char name[BUFFLEN];
} mycl_device_s;

// OpenCL devices
typedef mycl_device_s *mycl_device;

#endif