# interpolate-fields
This program interpolates DNS data to a new grid using linear interpolation. It can run and store the interpolated data in a massively-parallel setting using MPI I/O. For now, it assumes two regular Cartesian grids with the file format of [CaNS](https://github.com/p-costa/CaNS). Information about the boundary conditions of the system must be prescribed too. It is a cleaned up version of the routines used to create the initial conditions for particle-laden turbulent channel transport with 10^10 Eulerian grid points.

Fork of https://github.com/p-costa/interpolate-fields for interpolating DNS data. This fork has a branch for io of nfld fields from a single checkpoint file, as well as for interpolating 6 fields from a single checkpoint file (e.g., for symmetric stress tensors for VE/EVP fluids) in the main program. This program also reads the domain size, input and output grid sizes, and input and output filenames dynamically from input files; examples of the input file formats can be found in input/.
