CFLAGS=
all:cudablur
fastblur: fastblur.o
	gcc $(CFLAGS) fastblur.o -o fastblur -lm


fastblur.o: fastblur.c
	gcc -c $(CFLAGS) fastblur.c -o fastblur.o 
cudablur: cudablur.o
	nvcc $(CFLAGS) cudablur.o -o cudablur -lm
cudablur.o: cudablur.cu
	nvcc -c $(CFLAGS) cudablur.cu -o cudablur.o

clean:
	rm -f fastblur cudablur output.png
