module top (
            input  osc_en,
            (* clkbuf_inhibit *) output osc_out,
            (* clkbuf_inhibit *) input vin1_opamp,
            (* clkbuf_inhibit *) input vin2_opamp,
            (* clkbuf_inhibit *) input vp_opamp,
            (* clkbuf_inhibit *) output vout_opamp
);

   
   wire           osc_sig;
   TopLevel_oscillator osc0(.Y(osc_sig));
   assign osc_out = osc_sig & osc_en;
   
   OTA_2stage_macro amp1(.vout(vout_opamp), .vin1(vin1_opamp), .vin2(vin2_opamp), .vp(vp_opamp) );
endmodule //top


