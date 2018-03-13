#
# Kiwi Scientific Acceleration
# (C) 2014-17 DJ Greaves - University of Cambridge, Computer Laboratory
#
# Zynq Ksubs3
#

VIVADO=/usr/groups/ecad/xilinx/Vivado2017/Vivado/2016.4

#   $ export XILINXD_LICENSE_FILE=27020@lmserv-xilinx

all: fpga


fpga:
	$(VIVADO)/bin/vivado -source ksubs3.tcl -mode batch 
	md5sum output/topfpga.bit


# eof


