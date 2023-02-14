gds read TOP.gds

box values 0 0 0 0

port VDD class inout
port VDD use power
port VDD index 0

port osc_out class output
port osc_out use signal
port osc_out index 1

port VSS class inout
port VSS use ground
port VSS index 2

port osc_en class input
port osc_en use signal
port osc_en index 3

extract all
ext2spice scale off
ext2spice hierarchy on
ext2spice
