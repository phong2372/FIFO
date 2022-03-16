module mc(
	mc_out,
	mc_in,
	mc_sel,
	mc_rw
);
	output mc_out;
	input mc_in,mc_sel,mc_rw;
	wire t0,t1,t2;
	
	and a0(t0,mc_sel,mc_rw);
d_latch d0(
	.Q(t2),
	.Q_not(t1),
	.D(mc_in),
	.C(t0)
);
	tri_state t(
	.ts_out(mc_out),
	.ts_in(t2),
	.ts_sel(mc_sel)
);
endmodule 