#define clock 20ns (maximum frequency)
create_clock -period 20 [get_ports sys_clk]
set_property PACKAGE_PIN H16 [get_ports sys_clk]

#define key
set_property PACKAGE_PIN R19 [get_ports rst_n]

#define led
set_property PACKAGE_PIN G14 [get_ports {led[0]}]
set_property PACKAGE_PIN C20 [get_ports {led[1]}]
set_property PACKAGE_PIN B20 [get_ports {led[2]}]
set_property PACKAGE_PIN H17 [get_ports {led[3]}]

#define voltage
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]


