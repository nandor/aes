CC=gcc
CFLAGS=-std=c11 -O3 -I../unix

all: client

client: client.o aes.o
	$(CC) $(CFLAGS) client.o aes.o -o client

client.o: client.c
	$(CC) $(CFLAGS) -o $@ -c $<	

aes.o: ../unix/aes.c
	$(CC) $(CFLAGS) -c ../unix/aes.c -o aes.o

