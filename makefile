all: aout

aout: mod_spectra_heom.o spectra_heom.o
	gfortran -o aout mod_spectra_heom.o spectra_heom.o

%.o: %.f90
	gfortran -c $<

openmp:
	gfortran -fopenmp -o aout mod_spectra_heom.f90 spectra_heom.f90
	export OMP_NUM_THREADS=4;./aout

clean:
	rm *.o aout

