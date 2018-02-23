# Parallella Constraints


set_property PACKAGE_PIN U17    [get_ports GPIO0_N]
set_property PACKAGE_PIN T16    [get_ports GPIO0_P]
set_property PACKAGE_PIN W16    [get_ports GPIO1_N]
set_property PACKAGE_PIN V16    [get_ports GPIO1_P]


set_property PACKAGE_PIN P16    [get_ports GPIO2_N]
set_property PACKAGE_PIN P15    [get_ports GPIO2_P]
set_property PACKAGE_PIN R14    [get_ports GPIO4_N]
set_property PACKAGE_PIN P14    [get_ports GPIO4_P]


set_property PACKAGE_PIN U19    [get_ports GPIO3_N]
set_property PACKAGE_PIN U18    [get_ports GPIO3_P]
# gnd pin 12
set_property PACKAGE_PIN T15    [get_ports GPIO5_N]
set_property PACKAGE_PIN T14    [get_ports GPIO5_P]
set_property PACKAGE_PIN Y14    [get_ports GPIO7_N]
set_property PACKAGE_PIN W14    [get_ports GPIO7_P]

# Note: 18 to 20 are not present using the smaller 7010 Zynq part found on some of our boards.
#set_property PACKAGE_PIN W8    [get_ports GPIO18_N]
#set_property PACKAGE_PIN V8    [get_ports GPIO18_P]
#set_property PACKAGE_PIN Y6    [get_ports GPIO20_N]
#set_property PACKAGE_PIN Y7    [get_ports GPIO20_P]


set_property IOSTANDARD LVCMOS25 [get_ports GPIO*]

#set_property IOSTANDARD LVCMOS18 [get_ports dvv]
#set_property LOC T17 [get_cells dvv_OBUF_inst]

#######################
# HDMI constraints
#######################

set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_*}]

set_property PACKAGE_PIN Y18 [get_ports {HDMI_D[8]}]
set_property PACKAGE_PIN W18 [get_ports {HDMI_D[9]}]
set_property PACKAGE_PIN V18 [get_ports {HDMI_D[10]}]
set_property PACKAGE_PIN V15 [get_ports {HDMI_D[11]}]
set_property PACKAGE_PIN R18 [get_ports {HDMI_D[12]}]
set_property PACKAGE_PIN P18 [get_ports {HDMI_D[13]}]
set_property PACKAGE_PIN Y19 [get_ports {HDMI_D[14]}]
set_property PACKAGE_PIN W19 [get_ports {HDMI_D[15]}]
set_property PACKAGE_PIN W15 [get_ports {HDMI_D[16]}]
set_property PACKAGE_PIN T19 [get_ports {HDMI_D[17]}]
set_property PACKAGE_PIN R19 [get_ports {HDMI_D[18]}]
set_property PACKAGE_PIN P19 [get_ports {HDMI_D[19]}]
set_property PACKAGE_PIN W20 [get_ports {HDMI_D[20]}]
set_property PACKAGE_PIN V20 [get_ports {HDMI_D[21]}]
set_property PACKAGE_PIN U20 [get_ports {HDMI_D[22]}]
set_property PACKAGE_PIN T20 [get_ports {HDMI_D[23]}]
set_property PACKAGE_PIN R17 [get_ports HDMI_CLK]
set_property PACKAGE_PIN V17 [get_ports HDMI_VSYNC]
set_property PACKAGE_PIN T17 [get_ports HDMI_HSYNC]
set_property PACKAGE_PIN Y17 [get_ports HDMI_DE]
set_property PACKAGE_PIN Y16 [get_ports HDMI_SPDIF]
set_property PACKAGE_PIN P20 [get_ports HDMI_INT]

#####################
# I2C
#####################
set_property PACKAGE_PIN N18 [get_ports I2C_SCL]
set_property IOSTANDARD LVCMOS25 [get_ports I2C_SCL]
set_property PACKAGE_PIN N17 [get_ports I2C_SDA]
set_property IOSTANDARD LVCMOS25 [get_ports I2C_SDA]


# eof
