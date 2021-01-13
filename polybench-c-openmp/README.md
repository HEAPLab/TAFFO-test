# Modifications
Note that most benchmarks in [the original repository](https://github.com/cavazos-lab/PolyBench-ACC) have been modified, not only by adding annotations, but by fixing syntactical errors in the usage of OpenMP.

A not-negligible part of the benchmarks has not only syntactical, but also logical errors, when compiling with plain clang. Therefore, they have been excluded and deleted.
The deleted benchmarks, with the related motivation, are the following:
- datamining/correlation - Segmentation Fault
- linear-algebra/kernels/atax - Segmentation Fault
- linear-algebra/kernels/bicg - Segmentation Fault
- linear-algebra/kernels/cholesky - Segmentation Fault
- linear-algebra/kernels/gemver - Segmentation Fault
- linear-algebra/kernels/gesummv - Segmentation Fault
- linear-algebra/kernels/mvt - Segmentation Fault
- linear-algebra/kernels/trisolv - Segmentation Fault
- linear-algebra/kernels/trmm - Segmentation Fault
- linear-algebra/solvers/durbin - Segmentation Fault
- linear-algebra/solvers/dynprog - Segmentation Fault
- linear-algebra/solvers/gramschmidt - Segmentation Fault
- linear-algebra/solvers/lu - The results of the benchmark are mostly NaN
- linear-algebra/solvers/ludcmp - The results of the benchmark are mostly NaN
- stencils/adi - Although the benchmark should output numbers between 0 and 1, the resulting numbers are extremely high
- stencils/convolution-2d - Segmentation Fault
- stencils/convolution-3d - Segmentation Fault
- stencils/fdtd-apml - Segmentation Fault

You can find a list of the working ones in the [benchmark_list file](./utilities/benchmark_list).

# PolyBench/GPU-OpenMP 1.0

Copyright (c) 2013 the University of Delaware.
Contact: William Killian <killian@udel.edu>

Copyright (c) 2011-2012 the Ohio State University.
Contact: Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>

::linear-algebra::
linear-algebra/kernels:
linear-algebra/kernels/2mm/2mm.c
linear-algebra/kernels/3mm/3mm.c
linear-algebra/kernels/atax/atax.c
linear-algebra/kernels/bicg/bicg.c
linear-algebra/kernels/cholesky/cholesky.c
linear-algebra/kernels/doitgen/doitgen.c
linear-algebra/kernels/gemm/gemm.c
linear-algebra/kernels/gemver/gemver.c
linear-algebra/kernels/gesummv/gesummv.c
linear-algebra/kernels/mvt/mvt.c
linear-algebra/kernels/symm/symm.c
linear-algebra/kernels/syr2k/syr2k.c
linear-algebra/kernels/syrk/syrk.c
linear-algebra/kernels/trisolv/trisolv.c
linear-algebra/kernels/trmm/trmm.c

linear-algebra/solvers:
linear-algebra/solvers/durbin/durbin.c
linear-algebra/solvers/dynprog/dynprog.c
linear-algebra/solvers/gramschmidt/gramschmidt.c
linear-algebra/solvers/lu/lu.c
linear-algebra/solvers/ludcmp/ludcmp.c

::datamining::
datamining/correlation/correlation.c
datamining/covariance/covariance.c

::medley::
medley/floyd-warshall/floyd-warshall.c
medley/reg_detect/reg_detect.c

::stencils::
stencils/adi/adi.c
stencils/convolution-2d/convolution-2d.c
stencils/convolution-3d/convolution-3d.c
stencils/fdtd-2d/fdtd-2d.c
stencils/fdtd-apml/fdtd-apml.c
stencils/jacobi-1d-imper/jacobi-1d-imper.c
stencils/jacobi-2d-imper/jacobi-2d-imper.c
stencils/seidel-2d/seidel-2d.c
