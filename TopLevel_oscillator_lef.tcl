gds read TopLevel_oscillator.gds
load TopLevel_oscillator
box values 0 0 0 0
port VP class inout
port VP use power
port GND class inout
port GND use ground
port Y class output
port Y use signal

lef write -hide

