
# Zed


# User Push Buttons - Bank 34
set_property PACKAGE_PIN P16 [get_ports {BTNC}];  # "BTNC"
set_property PACKAGE_PIN R16 [get_ports {BTND}];  # "BTND"
set_property PACKAGE_PIN N15 [get_ports {BTNL}];  # "BTNL"
set_property PACKAGE_PIN R18 [get_ports {BTNR}];  # "BTNR"
set_property PACKAGE_PIN T18 [get_ports {BTNU}];  # "BTNU"
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];


# 8 Zed Slide switches bank 35 except for SW7
set_property PACKAGE_PIN F22 [get_ports USER_SW0]
set_property PACKAGE_PIN G22 [get_ports USER_SW1]
set_property PACKAGE_PIN H22 [get_ports USER_SW2]
set_property PACKAGE_PIN F21 [get_ports USER_SW3]
set_property PACKAGE_PIN H19 [get_ports USER_SW4]
set_property PACKAGE_PIN H18 [get_ports USER_SW5]
set_property PACKAGE_PIN H17 [get_ports USER_SW6]
set_property PACKAGE_PIN M15 [get_ports USER_SW7]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
#set_property IOSTANDARD LVCMOS18 [get_ports USER_SW0]
#set_property IOSTANDARD LVCMOS18 [get_ports USER_SW1]
#set_property IOSTANDARD LVCMOS18 [get_ports USER_SW2]
#set_property IOSTANDARD LVCMOS18 [get_ports USER_SW3]
#set_property IOSTANDARD LVCMOS18 [get_ports USER_SW4]
#set_property IOSTANDARD LVCMOS18 [get_ports USER_SW5]
#set_property IOSTANDARD LVCMOS18 [get_ports USER_SW6]
set_property IOSTANDARD LVCMOS18 [get_ports USER_SW7]
 
# 8 Zed LEDs - Bank 33
set_property PACKAGE_PIN T22 [get_ports USER_LD0] 
set_property PACKAGE_PIN T21 [get_ports USER_LD1]
set_property PACKAGE_PIN U22 [get_ports USER_LD2]
set_property PACKAGE_PIN U21 [get_ports USER_LD3]
set_property PACKAGE_PIN V22 [get_ports USER_LD4]
set_property PACKAGE_PIN W22 [get_ports USER_LD5]
set_property PACKAGE_PIN U19 [get_ports USER_LD6]
set_property PACKAGE_PIN U14 [get_ports USER_LD7]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
#set_property IOSTANDARD LVCMOS33 [get_ports USER_LD0]
#set_property IOSTANDARD LVCMOS33 [get_ports USER_LD1]
#set_property IOSTANDARD LVCMOS33 [get_ports USER_LD2]
#set_property IOSTANDARD LVCMOS33 [get_ports USER_LD3]
#set_property IOSTANDARD LVCMOS33 [get_ports USER_LD4]
#set_property IOSTANDARD LVCMOS33 [get_ports USER_LD5]
#set_property IOSTANDARD LVCMOS33 [get_ports USER_LD6]
#set_property IOSTANDARD LVCMOS33 [get_ports USER_LD7]

# Push Buttons

#NET BTNC          LOC = P16  | IOSTANDARD=LVCMOS18;  # "BTNC"
#NET BTND          LOC = R16  | IOSTANDARD=LVCMOS18;  # "BTND"
#NET BTNL          LOC = N15  | IOSTANDARD=LVCMOS18;  # "BTNL"
#NET BTNR          LOC = R18  | IOSTANDARD=LVCMOS18;  # "BTNR"
#NET BTNU          LOC = T18  | IOSTANDARD=LVCMOS18;  # "BTNU"



# 33 MHz clock
set_property PACKAGE_PIN Y9 [get_ports GCLK_in]
set_property IOSTANDARD LVCMOS33 [get_ports GCLK_in]

# eof


