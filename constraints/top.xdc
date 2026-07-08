################################################################################
# Clock
################################################################################

set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5} [get_ports clk]

################################################################################
# Switches SW0-SW15
################################################################################

set_property PACKAGE_PIN V17 [get_ports {sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {sw[3]}]
set_property PACKAGE_PIN W15 [get_ports {sw[4]}]
set_property PACKAGE_PIN V15 [get_ports {sw[5]}]
set_property PACKAGE_PIN W14 [get_ports {sw[6]}]
set_property PACKAGE_PIN W13 [get_ports {sw[7]}]

set_property PACKAGE_PIN V2 [get_ports {sw[8]}]
set_property PACKAGE_PIN T3 [get_ports {sw[9]}]
set_property PACKAGE_PIN T2 [get_ports {sw[10]}]
set_property PACKAGE_PIN R3 [get_ports {sw[11]}]
set_property PACKAGE_PIN W2 [get_ports {sw[12]}]
set_property PACKAGE_PIN U1 [get_ports {sw[13]}]
set_property PACKAGE_PIN T1 [get_ports {sw[14]}]
set_property PACKAGE_PIN R2 [get_ports {sw[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports sw[*]]

################################################################################
# Buttons
# bt0 = BtnU (Load A)
# bt1 = BtnD (Load B)
# bt2 = BtnL (Load Select)
# bt3 = BtnR (Reset)
################################################################################

set_property PACKAGE_PIN T18 [get_ports bt0]
set_property IOSTANDARD LVCMOS33 [get_ports bt0]

set_property PACKAGE_PIN U17 [get_ports bt1]
set_property IOSTANDARD LVCMOS33 [get_ports bt1]

set_property PACKAGE_PIN W19 [get_ports bt2]
set_property IOSTANDARD LVCMOS33 [get_ports bt2]

set_property PACKAGE_PIN T17 [get_ports bt3]
set_property IOSTANDARD LVCMOS33 [get_ports bt3]

################################################################################
# LEDs
################################################################################

set_property PACKAGE_PIN U16 [get_ports {led[0]}]
set_property PACKAGE_PIN E19 [get_ports {led[1]}]
set_property PACKAGE_PIN U19 [get_ports {led[2]}]
set_property PACKAGE_PIN V19 [get_ports {led[3]}]
set_property PACKAGE_PIN W18 [get_ports {led[4]}]
set_property PACKAGE_PIN U15 [get_ports {led[5]}]
set_property PACKAGE_PIN U14 [get_ports {led[6]}]
set_property PACKAGE_PIN V14 [get_ports {led[7]}]

set_property PACKAGE_PIN V13 [get_ports {led[8]}]
set_property PACKAGE_PIN V3 [get_ports {led[9]}]
set_property PACKAGE_PIN W3 [get_ports {led[10]}]
set_property PACKAGE_PIN U3 [get_ports {led[11]}]
set_property PACKAGE_PIN P3 [get_ports {led[12]}]
set_property PACKAGE_PIN N3 [get_ports {led[13]}]
set_property PACKAGE_PIN P1 [get_ports {led[14]}]
set_property PACKAGE_PIN L1 [get_ports {led[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports led[*]]

################################################################################
# Seven Segment Display
#
# ss[0] -> CA (segment a)
# ss[1] -> CB (segment b)
# ss[2] -> CC (segment c)
# ss[3] -> CD (segment d)
# ss[4] -> CE (segment e)
# ss[5] -> CF (segment f)
# ss[6] -> CG (segment g)
################################################################################

set_property PACKAGE_PIN W7 [get_ports {ss[0]}]
set_property PACKAGE_PIN W6 [get_ports {ss[1]}]
set_property PACKAGE_PIN U8 [get_ports {ss[2]}]
set_property PACKAGE_PIN V8 [get_ports {ss[3]}]
set_property PACKAGE_PIN U5 [get_ports {ss[4]}]
set_property PACKAGE_PIN V5 [get_ports {ss[5]}]
set_property PACKAGE_PIN U7 [get_ports {ss[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports ss[*]]

################################################################################
# Seven Segment Anodes
################################################################################

set_property PACKAGE_PIN U2 [get_ports {anode[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports anode[*]]