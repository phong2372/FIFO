module ram_1(
	ram1_out,
	ram1_in,
	ram1_cs,
	ram1_rw
);
	parameter N = 8;
	output [N-1:0] ram1_out;
	input  [N-1:0] ram1_in;
	input ram1_cs,ram1_rw;
	
	mc m[N-1:0](
	.mc_out({ram1_out[N-1:0]}),
	.mc_in({ram1_in[N-1:0]}),
	.mc_sel({ram1_cs}),
	.mc_rw({ram1_rw})
);
endmodule 