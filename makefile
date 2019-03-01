all: aout

aout: mod_spectra_heom.o spectra_heom.o
	gfortran -o aout mod_spectra_heom.o spectra_heom.o

%.o: %.f90
	gfortran -c $<

clean:
	rm *.o aout

