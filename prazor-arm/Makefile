# Copyright (C) 2015 XPARCH, Ltd. <info@xparch.com>
#
# Hello World - most simple program possible.   If using just writes it should compile without even libc and should either use a putchar ISS backdoor or else write to the uart using craft_wrch.
#


# You need to manually set the PRAZOR environment variable to the root directory of your compiled version of Prazor, i.e. export PRAZOR=/home/dtc34/Documents/P35/pvp11 
TARCH=ARM32
USE_THUMB=1
USE_PRLIBC=1

all: aes

include $(PRAZOR)/vhls/images/Makefile.inc

KEY=11223344556677889900112233445566
IV=11223344556677889900112233445566

CFLAGS += -DUNICORE -I../unix -O3

EXTRALIBS += 

CMD=$(SIM) $(DRAM_FLAGS) \
    -self-starting-cores 1 \
    -global-qk-ns 100 \
    -vcd-power-plot \
    -tracelevel 0 \
    -watch b8 +20


aes: $(LIBS) aes.o main.o $(CRT1) $(EXTRALIBS)
	$(LD)  $(LDFLAGS) -o aes $(CRT1) main.o aes.o $(EXTRALIBS) $(LIBS) $(LDLIBS) 

main.o: main.c
	$(CC) $(CFLAGS) -I$(DDRIVERS)/uart64_cbg -c main.c -o main.o

aes.o: ../unix/aes.c
	$(CC) $(CFLAGS) -c ../unix/aes.c -o aes.o

run: aes
	ulimit -t 100; $(CMD) -image ./aes -name nominal -- $(KEY) $(IV) input.txt output.txt

clean:
	rm -f hello *.o *.s

