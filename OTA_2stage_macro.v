(*blackbox*)
module OTA_2stage_macro (
`ifdef USE_POWER_PINS
    inout vdd,
    inout vss,
`endif
    output vout,
    input vin1,
    input vin2,
    input vp
);
endmodule // OTA_2stage
