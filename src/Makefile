# Makefile 

include configs/build.conf
include include/compilers.mk
include include/flags.mk

.PHONY: clean

.SUFFIXES : 
.SUFFIXES : .o .c .f90

.f90.o:
	$(FC) $(FFLAGS) -c -o $@ $<

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<


OBJS = bound.o \
common.o \
io.o

MAIN_SRC = interpolate-fields.f90

APPDIR = ../app
EXEDIR = ../exe
DATADIR = $(EXEDIR)/data

##############################################################

TARGET = interpit

all: $(TARGET)
	mkdir -p $(EXEDIR)
	mkdir -p $(DATADIR)
	mv $(TARGET) $(EXEDIR)

$(APPDIR)/$(patsubst %.f90,%.o,$(MAIN_SRC)): $(APPDIR)/$(MAIN_SRC) $(OBJS)
	$(FC) $(FFLAGS) -c -o $(APPDIR)/$(patsubst %.f90,%.o,$(MAIN_SRC)) $<

$(TARGET): $(OBJS) $(APPDIR)/$(patsubst %.f90,%.o,$(MAIN_SRC))
	$(FC) $(FFLAGS) $(OBJS) $(APPDIR)/$(patsubst %.f90,%.o,$(MAIN_SRC)) -o $(TARGET)

clean-obj:
	rm -rf *.o *.mod *dSYM
	rm -rf ../app/*.o $(APPDIR)/*.d

clean: clean-obj
	rm -rf $(EXEDIR)/$(TARGET) 

include make.deps
