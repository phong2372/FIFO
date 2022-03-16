module fifo( 
	io,
	reset,
	rw,
	en,
	empty,
	full,
	clk
);
	inout [7:0] io;
	output full,empty; 
	input reset,rw,en,clk;
	wire enandrw,enandrwnot,eq,tmpxor;
	wire[3:0] addr1,addr2,addr3;	
   and(enandrw,en,rw);
	and(enandrwnot,en,~rw);
   counter front1(
   	.ct_q({addr1[3:0]}),
	.ct_e(enandrwnot),
	.ct_clear({reset}),
	.ct_clk({clk})
); 
   counter back1(
   .ct_q({addr2[3:0]}),
	.ct_e(enandrw),
	.ct_clear({reset}),
	.ct_clk({clk})
); 
   mux2_1_nbit m0(
   .mux21n_out({addr3[3:0]}),
	.mux21n_in0({addr2[3:0]}),
	.mux21n_in1({addr1[3:0]}),
	.mux21n_sel(enandrwnot)
);
   ram r0(
	.ram_io({io[7:0]}),
	.ram_addr({addr3[2:0]}),
	.ram_cs({en}),
	.ram_rw(enandrw)
);
	comparator c(
	.out({eq}),
	.in1({addr1[2:0]}),
	.in2({addr2[2:0]})
);
	xor(tmpxor,addr1[3],addr2[3]);
	and(empty,~tmpxor,eq);
	and(full,tmpxor,eq); 	
endmodule