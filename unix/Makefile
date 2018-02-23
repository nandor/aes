CC=gcc
CFLAGS=-O3

all: aes

aes: aes.o main.o
	$(CC) -o $@ $?

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm aes *.o

