gds read OTA_2stage.gds
load OTA_2stage
box values 0 0 0 0

port vdd class inout
port vdd use power
port vdd index 0

port vout class output
port vout use signal
port vout index 1

port vss class inout
port vss use ground
port vss index 2

port vin1 class input
port vin1 use signal
port vin1 index 3

port vin2 class input
port vin2 use signal
port vin2 index 4

port vp class input
port vp use signal
port vp index 5

extract all
ext2spice rthresh 0
ext2spice cthresh 3f
ext2spice scale off
ext2spice hierarchy on
ext2spice
