ifeq "$(ARCH)" "GNU"
FC = mpif90
endif
ifeq "$(ARCH)" "INTEL"
FC = mpiifort
endif
ifeq "$(ARCH)" "CRAY"
FC = ftn
endif
ifeq "$(ARCH)" "NVIDIA"
FC = mpifort
endif
