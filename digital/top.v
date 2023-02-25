module top (
`ifdef USE_POWER_PINS
            inout vdd,
            inout vss,
`endif
            input  osc_en,
            (* clkbuf_inhibit *) output osc_out
            //(* clkbuf_inhibit *) input vin1_opamp,
            //(* clkbuf_inhibit *) input vin2_opamp,
            //(* clkbuf_inhibit *) input vp_opamp,
            //(* clkbuf_inhibit *) output vout_opamp
);


   wire           osc_sig;

   TopLevel_oscillator_macro osc0(
`ifdef USE_POWER_PINS
        .VP(vdd),	// User area 1 1.8V power
        .GND(vss),	// User area 1 digital ground
`endif
       .Y(osc_sig),
       .AND_OUT(osc_out)
   );
   assign osc_out = osc_sig & osc_en;

   //OTA_2stage_macro amp1(.vout(vout_opamp), .vin1(vin1_opamp), .vin2(vin2_opamp), .vp(vp_opamp) );
endmodule //top
