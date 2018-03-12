TODO
======

* Figure out why the Prazor output differs from the Unix output. The problem is likely due to the way Prazor handles zero bytes, i.e. 00. One possible fix is to change line 2822 in src/arm/armisa.cpp, which may solve the problem.

unix
======

C library of AES encryption based on the tiny-C-aes library, *aes.c* and *aes.h*. Folder also contains code to call the C library without acceleration to run on standard Unix.

Usage:

cat plaintext | ./aes 11223344556677889900112233445566 11223344556677889900112233445566 > output.txt 

where plaintext is a file containing the plaintext you want to encrypt and output.txt is the resulting ciphertext.

client
======

Performs accelerated AES encryption by talking to the FPGA accelerator over the NoC interface. Uses the same AES library as unaccelerated Unix.

Make sure the correct bitfile is loaded onto the card (using MD5 checksums of the bitfile using *md5sum*), or else the card will freeze when you try to run the C code. To reset the card if it freezes, do the following:

	ssh root@bognor.sm
	parcard-djg1.reset

Usage:

cat plaintext | ./client 11223344556677889900112233445566 11223344556677889900112233445566 > output.txt

where plaintext is a file containing the plaintext you want to encrypt and output.txt is the resulting ciphertext.

fpga
======

Contains the Verilog code which implements the AES accelerator on the Zynq chip. The output of running this code is a bitfile which needs to be downloaded onto the Parallala card (or whichever card was targeted) using *scp*:

	scp ./topfpga.bit root@parcard-djg1.sm:/home/dtc34


and then loaded onto the Zynq chip by typing the following as root:

	cat /home/dtc34/topfpga.bit > /dev/xdevcfg

If the image was successfully loaded, typing the following should return 1:

	cat /sys/devices/amba.0/f8007000.ps7-dev-cfg/prog_done


monitor
======

Contains code to collect power information from the Parallela card running in FN12 (parcard-djg1.sm) over Telnet.

prazor-arm
======

Prazor implementation of AES encryption without any acceleration. Uses the AES library from the Unix folder.  The key and IV are specified in the Makefile.

Usage:

First, set the PRAZOR environment variable to the root directory of your pre-compiled version of Prazor, i.e.

	export PRAZOR=/home/dtc34/Documents/P35/pvp11

Next, create a file *input.txt* in the prazor-arm folder. Then, type *make run*. The result of the encryption will be stored in output.txt.

prazor-accel
======

Prazor implementation with acceleration. Talks to 'module', which is the Prazor accelerator. If you have not moved *module* to the correct place when you run *make run*, you will get caught in an infinite loop.

Usage:

Same as unaccelerated Prazor.


module
======

Prazor accelerator module. As of right now, must manually be copied into your prazor directory into the following folder:

$PRAZOR/vhls/src/aes

and the makefiles and zynq.cpp must be adjusted accordingly.


