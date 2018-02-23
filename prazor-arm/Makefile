# Copyright (C) 2015 XPARCH, Ltd. <info@xparch.com>
#
# Hello World - most simple program possible.   If using just writes it should compile without even libc and should either use a putchar ISS backdoor or else write to the uart using craft_wrch.
#



TARCH=ARM32
PRAZOR=$(HOME)/Projects/soc-design/pvp11
USE_THUMB=1
USE_PRLIBC=1

all: aes

include $(PRAZOR)/vhls/images/Makefile.inc

CFLAGS += -DUNICORE

EXTRALIBS += 

CMD=$(SIM) $(DRAM_FLAGS) \
    -self-starting-cores 2 \
    -no-caches \
    -global-qk-ns 100 \
    -vcd-power-plot \
    -tracelevel 1 \
    -watch b8 +20


aes: $(LIBS) aes.o $(CRT1) $(EXTRALIBS)
	$(LD)  $(LDFLAGS) -o aes $(CRT1) aes.o $(EXTRALIBS) $(LIBS) $(LDLIBS) 

aes.o: aes.c
	$(CC) $(CFLAGS) -I$(DDRIVERS)/uart64_cbg -c aes.c

run:
	ulimit -t 100; $(CMD) -image ./aes -name nominal  

clean:
	rm -f hello *.o *.s

