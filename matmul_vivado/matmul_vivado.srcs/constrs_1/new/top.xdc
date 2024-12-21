set_property PACKAGE_PIN M2 [get_ports {seg_out_0[7]}]
set_property PACKAGE_PIN M1 [get_ports {seg_out_0[6]}]
set_property PACKAGE_PIN M5 [get_ports {seg_out_0[5]}]
set_property PACKAGE_PIN M4 [get_ports {seg_out_0[4]}]
set_property PACKAGE_PIN L2 [get_ports {seg_out_0[3]}]
set_property PACKAGE_PIN L1 [get_ports {seg_out_0[2]}]
set_property PACKAGE_PIN P3 [get_ports {seg_out_0[1]}]
set_property PACKAGE_PIN R3 [get_ports {seg_out_0[0]}]

set_property PACKAGE_PIN U2 [get_ports {com_out_0[3]}]
set_property PACKAGE_PIN U1 [get_ports {com_out_0[2]}]
set_property PACKAGE_PIN T3 [get_ports {com_out_0[1]}]
set_property PACKAGE_PIN T2 [get_ports {com_out_0[0]}]

# Set the bank voltage for IO Bank 65 to 1.2V
set_property IOSTANDARD LVCMOS12 [get_ports -of_objects [get_iobanks 65]]
