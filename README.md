unix
======

ARM/Unix unaccelerated implementation, based on the tiny-C-aes library.


prazor-arm
======

Prazor implementation without acceleration

prazor-accel
======

Prazor implementation talking to the module


module
======

Prazor accelerator module. This must be copied into prazor:

vhls/src/aes

and the makefiles and zynq.cpp must be adjusted accordingly.

