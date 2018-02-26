CC=gcc
CFLAGS=-O3 -std=c11

all: aes

aes: main.o aes.o
	$(CC) -o aes main.o aes.o

main.o: main.c aes.h
	$(CC) -c $(CFLAGS) -o main.o main.c

aes.o: aes.c aes.h
	$(CC) -c $(CFLAGS) -o aes.o aes.c

.PHONY: clean
clean:
	rm -f aes *.o

