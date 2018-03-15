#!/bin/bash


KEY=00112233445566778899aabbccddeeff
IV=00112233445566778899aabbccddeeff

SIM=$PRAZOR/vhls/src/platform/arm/zynq/parallella/vhls-arm.s

BOARD=$PRAZOR/vhls/boards/parallella

DRAM_FLAGS="-dram-system-ini $BOARD/dramsim.ini -dram-device $BOARD/DDR3_micron_32M_8B_x32_parallella.ini"

CMD="$SIM $DRAM_FLAGS -self-starting-cores 1 -global-qk-ns 100 -tracelevel 0"

test() {
  ulimit -t 100
  FREQ=$($CMD \
    -core-frequency $1 \
    -zynq-frequency $2 \
    -image ./aes \
    -name nominal \
    -- \
    $KEY $IV input.txt output.txt 2>&1 | grep Time | awk '{print $4 * 2048 * 1e-12 }')
  echo $1 $2 $FREQ
}

test 666 250
test 666 200
test 666 166
test 666 100
test 333 250
test 333 200
test 333 166
test 333 100
test 166 250
test 166 200
test 166 166
test 166 100

