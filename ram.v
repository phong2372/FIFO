module ram(
	ram_io,
	ram_addr,
	ram_cs,
	ram_rw
);
	parameter N = 8;
	inout [N-1:0] ram_io;
	input [2:0] ram_addr;
	input ram_cs,ram_rw;
	wire [7:0] tmpcs;
	wire [N-1:0] tmpout;
	wire csandrw, csandn_rw;
	
	and(csandrw,ram_cs,ram_rw);
	and(csandn_rw,ram_cs,~ram_rw);
	
	decoder3_8 dc1(
	.decoder_out({tmpcs[7:0]}),
  	.binary_in({ram_addr[2:0]}),
	.en(1)
);
	ram_1 r[7:0]( 
	.ram1_out({tmpout[N-1:0]}),
	.ram1_in({ram_io[N-1:0]}),
	.ram1_cs({tmpcs[7:0]}),
	.ram1_rw({csandrw})
);
	
	tri_state t[N-1:0](
	.ts_out({ram_io[N-1:0]}),
	.ts_in({tmpout[N-1:0]}),
	.ts_sel(csandn_rw)
);
endmodule
	