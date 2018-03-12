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
	ls -l /tmp/ksubs3-fpga
	md5sum /tmp/ksubs3-fpga/topfpga.bit


isim:
	iverilog simsys.v $(ANAME).v $(CVTECH1) $(CVTECH2) $(X1) ksubs3.v
	./a.out


# eof


