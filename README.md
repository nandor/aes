unix
======

C library of AES encryption based on the tiny-C-aes library, *aes.c* and *aes.h*. Folder also contains code to call the C library without acceleration to run on standard Unix.

Usage:

./aes 11223344556677889900112233445566 11223344556677889900112233445566 plaintext output.txt 

where plaintext is a file containing the plaintext you want to encrypt and output.txt is the resulting ciphertext.

client
======

Performs accelerated AES encryption by talking to the FPGA accelerator over the NoC interface. Uses the same AES library as unaccelerated Unix.

Make sure the correct bitfile is loaded onto the card (using MD5 checksums of the bitfile using *md5sum*), or else the card will freeze when you try to run the C code. To reset the card if it freezes, do the following:

	ssh root@bognor.sm
	parcard-djg1.reset

Usage:

./client 11223344556677889900112233445566 11223344556677889900112233445566 plaintext output.txt

where plaintext is a file containing the plaintext you want to encrypt and output.txt is the resulting ciphertext.

fpga
======

Contains the Verilog code which implements the AES accelerator on the Zynq chip. The output of running this code is a bitfile which needs to be downloaded onto the Parallala card (or whichever card was targeted) using *scp*:

	scp ./topfpga.bit root@parcard-djg1.sm:/home/dtc34


and then loaded onto the Zynq chip by typing the following as root:

	cat /home/dtc34/topfpga.bit > /dev/xdevcfg

If the image was successfully loaded, typing the following should return 1:

	cat /sys/devices/amba.0/f8007000.ps7-dev-cfg/prog_done


stats
======

Contains code to collect power information from the Parallela card running in FN12 (parcard-djg1.sm) over Telnet.

Also contains Python script to process text outputs and collect stats from outputs. Contains example outputs from Nandor.

prazor-arm
======

Need to be change this file for the output work correctly: src/tenos/io_backdoor.cpp. Also need to change io_backdoor.h and armisa.cpp.

Specifically, make the following changes:

	2813 case 12: { /* fflush */
	2814   int i;
	2815
	2816   u32_t fbuf_addr = Reg(1);
	2817   int size = Reg(2);
	2818   char* buffer = (char*)malloc(sizeof(char)*size);
	2819
	2820   bzero(&buffer[0], size);
	2821   for (i = 0; i < size; ++i) {
	2822     armisa_read1(fbuf_addr++, 0, false, false);
	2823     char d = (char)read_data;
	2824     buffer[i] = d;
	2825   }
	2826
	2827   Reg(0) = io_backdoor_su->flush(Reg(0), buffer, size);
	2828   break;
	2829       }

	22   /* flush */
	23   int flush(int fid, char* buf, int size);
	24

	61 int io_backdoor_setup::flush(int fid, char* buf, int size) {
	62   FILE *f;
	63
	64   f = files[fid];
	65   fwrite(buf, size, 1, f);
	66
	67   return strlen(buf);
	68 }
	69

Prazor implementation of AES encryption without any acceleration. Uses the AES library from the Unix folder.  The key and IV are specified in the Makefile.

Usage:

First, set the PRAZOR environment variable to the root directory of your pre-compiled version of Prazor, i.e.

	export PRAZOR=/home/dtc34/Documents/P35/pvp11

Next, create a file *input.txt* in the prazor-arm folder. Then, type *make run*. The result of the encryption will be stored in output.txt.

prazor-accel
======

Prazor implementation with acceleration. Talks to 'module', which is the Prazor accelerator.

Usage:

Same as unaccelerated Prazor. Note that if you have not moved *module* to the correct place and followed the instructions below correctly, when you *make run*, you will get caught in an infinite loop.


module
======

Prazor accelerator module. Must be manually copied into your Prazor directory:

	mkdir $PRAZOR/vhls/src/aes
	cp ./module/* $PRAZOR/vhls/src/aes/

Next, the following changes must be made to Prazor:

1. Include the two aes headers in the file zynq.h
2. The new block needs to be instantiated inside the zynq files src/platform/arm/zynq/parallella/zynq{.cpp,.h}
3.  BUSMUX64_BIND(busmux0, aes0.port0, AES_BASE_ADDR, AES_SPACING); must be added to zynq.cpp to connect the device to the I/O bus.
4. src/Makefile.am needs to be adjusted to include the aes subdirectory. Make sure the aes subdirectory is listed at the beginning of the list, or at least before platform.
5. Change the variable AC_OUTPUT in configure.ac to include the AES directory.
6. add $(top_builddir)/src/aes/libaes.la to both libzynq_s_la_LIBADD and libzynq_la_LIBADD into src/platform/arm/zynq/parallella/Makefile.am


Whenever you are building Prazor, make sure you are in the vhls directory and type *autoreconf* followed by *./configure  TLM_POWER3=$TLM_POWER3 --with-tlm-power --with-speedo  --host=x86_64-pc-linux-gnu* ensuring all your environment variables are set properly.

To correctly measure power on Prazor and have the output go to nominal.power.txt, add POWER3_TRC_2(aes0, "AES") to near line 567 in zynq.cpp.

test
======

Contains test input and output files to prove that the accelerator works on all the different platforms. .bin files are the raw output file before the hexdump, and .txt files are the output after the hexdump.


Benchmarking and Changing Frequency on the FPGA
======

To change the FPGA frequency:

	devmem2 0xF8000170 w 0x100400

Change the number 4 in 0x100400 to change what you divide the frequency by. The clock normally runs at 1GHz.

To change the ARM CPU frequency:

	devmem2 0xF8000120 w 0x1F000400

ARM normally runs at 666MHz.

To measure reads:

	./kiwi-ksubs3/kiwi-ksubs3-server/ksubs3.1-server -pio-performance -1000000

To measure writes:

	./kiwi-ksubs3/kiwi-ksubs3-server/ksubs3.1-server -pio-performance 1000000

where kiwi-ksubs3 is the repo originally at https://bitbucket.org/djg11/kiwi-ksubs3.git and now on Nandor's parcard account.

Other changes
=======

change src/vhls.cpp to make the changes for the Prazor command line argument to change the Zynq frequency (~line 235).
