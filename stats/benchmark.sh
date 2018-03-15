#!/bin/sh
# Runs benchmark on the Parallela card.

KEY=00112233445566778899aabbccddeeff
FILE=input16.txt
ITERS=5


for ((s = 4; s <= 12; ++s)) do
  devmem2 0xF8000170 w 0x100$(printf %x $s)00 > /dev/null
  cat topfpga.bit > /dev/xdevcfg

  for ((i = 0; i < $ITERS; ++i)) do
    ./aes/client/client $KEY $KEY $FILE
  done
done

for ((i = 0; i < $ITERS; ++i)) do
  ./aes/unix/aes $KEY $KEY $FILE
done
