unix
======

ARM/Unix unaccelerated implementation, based on the tiny-C-aes library.

Usage:

cat plaintext | ./aes 11223344556677889900112233445566 11223344556677889900112233445566

where plaintext is a file containing the plaintext you want to encrypt.

prazor-arm
======

Prazor implementation without acceleration

Usage:

Create a file input.txt in the folder, and then type "make run". The result of the encryption will be stored in output.txt.

prazor-accel
======

Prazor implementation talking to the module


module
======

Prazor accelerator module. As of right now, must manually be copied into your prazor directory into the following folder:

vhls/src/aes

and the makefiles and zynq.cpp must be adjusted accordingly.

client
======

Used to talk to the FPGA accelerator over NOC. Has nothing to do with Prazor.
