module counter(
   ct_q,
	ct_e,
	ct_clear,
	ct_clk
); 
   parameter N = 4;
	output[N-1:0] ct_q;
	input ct_e,ct_clk,ct_clear;
	wire [N-1:0] tmpd,tmpci;
	
	ha h[N-1:0](
   	.ha_cinext({tmpci[N-1:0]}),
	.ha_di({tmpd[N-1:0]}),
	.ha_qi({ct_q[N-1:0]}),
	.ha_ci({tmpci[N-2:0],ct_e})
);
	dff_bh d[N-1:0](
	.q({ct_q[N-1:0]}),
	.d({tmpd[N-1:0]}),
	.reset({ct_clear}), 
	.clk({ct_clk})
);
endmodule 
	
