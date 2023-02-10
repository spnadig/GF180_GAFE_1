module top (
            input  osc_en,
            (* clkbuf_inhibit *) output osc_out
);

   
   wire           osc_sig;
   TopLevel_oscillator osc0(.Y(osc_sig));
   assign osc_out = osc_sig & osc_en;
   
endmodule //top


