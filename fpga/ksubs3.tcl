
# /usr/groups/ecad/xilinx/vivado_sdk_installed/Vivado/2015.1/bin/vivado -source ~/tcl-xilinx-script1.tcl -mode batch

set TOPNAME ksubs3_zynq_toplevel

#STEP#1: define the output directory area.
#
set outputDir ./output

# If you need hprls you will find a stable copy is being added here at some point soon:  /usr/groups/han/clteach/hprls2

# Adjust the following setting for the name of the folder containing this folder or to `pwd`
set design_dir [pwd]
set ksubs3_dir $design_dir


file mkdir $outputDir


#--------------------
# STEP#2: setup design sources and constraints
#



# These are the (Kiwi-generated) RTL files for the current design - you should be importing your own
#read_verilog primes_offchip.v
#read_verilog $design_dir/example_designs/lu-decomp-sp.v
read_verilog $design_dir/design/helper.v
read_verilog $design_dir/design/peripheral_device.v

# These are the RTL files needed for this particular ksubs3 wrapper.
read_verilog $design_dir/ksubs3_axi_zynq/ksubs3_zynq_toplevel.v
read_verilog $design_dir/ksubs3_axi_zynq/ksubs3_axi_pio_target.v
read_verilog $design_dir/ksubs3_axi_zynq/ksubs3_innercore.v


# This is a memory bank made up of BRAM, perhaps used in some designs.
read_verilog $design_dir/membank_hf1.v



# These are the RTL files for the Xilinx protocol convertor
source "$ksubs3_dir/axi3-simple-ipblocks.tcl"
read_verilog $ksubs3_dir/xilinx_ip/djgaxi.v




#
#--------------------
# STEP#3: run synthesis, write design checkpoint, report timing,
# and utilization estimates
#

# Set the Zynq Chip type
# Parallella wants: set part xc7z010clg400-1  set pinout_define PARCARD10=1
# Zedboard wants:   set part xc7z020clg484-1  set pinout_define ZEDBOARD20=1
# Pynq wants        set part xc7z020clg400-1  set vdefine PYNQ20=1
# Arty wants much the same as Pynq
# vc707 wants synth_design -top fstop -part xc7vx485tffg1761-2

#set part xc7z020clg484-1  
#set pinout_define ZEDBOARD20=1 

set part xc7z010clg400-1  
set pinout_define PARCARD10=1 

#set part xc7z020clg400-1  
#set pinout_define PYNQ20=1 


# Set the PCB pinout
# Parallella wants: set pinout $ksubs3_dir/pinouts/parallella10.xdc
# Zedboard wants:   set pinout $ksubs3_dir/pinouts/zedboard20.xdc
# Pynq wants:       set pinout $ksubs3_dir/pinouts/PYNQ-Z1_C.xdc

set pinout $ksubs3_dir/pinouts/parallella10.xdc


#set resultService_define DUT_WANTS_RESULT64_SERVICE=1
#set noc_define           DUT_WANTS_NOC8_SERVICE=1
#set pio_define           DUT_WANTS_PIO_32_8_SERVICE=0
#set loadstore_define     DUT_WANTS_LOADSTORE_PORT0=1

synth_design -top $TOPNAME -part $part  \
    -verilog_define DUT_WANTS_RESULT64_SERVICE \
    -verilog_define DUT_WANTS_NOC8_SERVICE \
    -verilog_define $pinout_define \
    -include_dirs $RTL_INCLUDE_PATH 

# Constraints - xcf file
read_xdc $pinout
create_clock -period 6.000 -name my_main_clock [get_nets zynq_axi_master_i/ACLK]


#write_checkpoint -force $outputDir/post_synth.dcp
#report_timing_summary -datasheet -file $outputDir/post_synth_timing_summary.rpt
#report_utilization -file $outputDir/post_synth_util.rpt

# Run custom script to report critical timing paths
# reportCriticalPaths $outputDir/post_synth_critpath_report.csv


#--------------------
# STEP#4: run logic optimization, placement and physical logic optimization,
# write design checkpoint, report utilization and timing estimates
#
opt_design
#reportCriticalPaths $outputDir/post_opt_critpath_report.csv
place_design
#report_clock_utilization -file $outputDir/clock_util.rpt
#

# Optionally run optimization if there are timing violations after placement
if {[get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -setup]] < 0} {
   puts "Found setup timing violations => running physical optimization"
   phys_opt_design
}

#write_checkpoint -force $outputDir/post_place.dcp
#report_utilization -file $outputDir/post_place_util.rpt

#report_timing_summary -file $outputDir/post_place_timing_summary.rpt

#--------------------
# STEP#5: run the router, write the post-route design checkpoint, report the routing
# status, report timing, power, and DRC, and finally save the Verilog netlist.
#
route_design

#write_checkpoint -force $outputDir/post_route.dcp
#report_route_status -file $outputDir/post_route_status.rpt

# ACLK is 100 MHz at the moment. 
#create_clock -period 6.000 -name my_main_clock [get_nets zynq_axi_master_i/ACLK]
report_timing_summary -file $outputDir/post_route_timing_summary.rpt -report_unconstrained



create_clock -period 4.000 -name my_main_clock [get_nets zynq_axi_master_i/ACLK]
report_power -file $outputDir/power_4.rpt
create_clock -period 5.000 -name my_main_clock [get_nets zynq_axi_master_i/ACLK]
report_power -file $outputDir/power_5.rpt
create_clock -period 6.000 -name my_main_clock [get_nets zynq_axi_master_i/ACLK]
report_power -file $outputDir/power_6.rpt
create_clock -period 10.000 -name my_main_clock [get_nets zynq_axi_master_i/ACLK]
report_power -file $outputDir/power_10.rpt
#report_drc -file $outputDir/post_imp_drc.rpt
#write_verilog -force $outputDir/topfpga_impl_netlist.v -mode timesim -sdf_anno true
#
# STEP#6: generate a bitstream
#
write_bitstream -force $outputDir/topfpga.bit
