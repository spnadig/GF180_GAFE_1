gds read OTA_2stage_macro.gds
load OTA_2stage_macro

box values 0 0 0 0

port vdd class inout
port vdd use power
port vss class inout
port vss use ground
port vout remove
port vin1 remove
port vin2 remove
port vp remove

lef write -hide

