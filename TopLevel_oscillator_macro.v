(*blackbox*)
module TopLevel_oscillator_macro (
`ifdef USE_POWER_PINS
    inout VP,
    inout GND,
`endif
    output Y,
    inout AND_OUT
);
endmodule // TopLevel_oscillator
