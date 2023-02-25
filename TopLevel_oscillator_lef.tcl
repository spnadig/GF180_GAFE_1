gds read TopLevel_oscillator_macro.gds
load TopLevel_oscillator_macro

box values 0 0 0 0

port VP class inout
port VP use power
port GND class inout
port GND use ground
port Y class output
port Y use signal
port AND_OUT class input
port AND_OUT use signal
port CLK_IN remove
port ASIG5V remove

lef write -hide
