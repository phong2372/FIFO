module mux2_1_nbit(
   mux21n_out,
	mux21n_in0,
	mux21n_in1,
	mux21n_sel
); 
	parameter N = 4;
	output [N-1:0] mux21n_out;
	input  [N-1:0] mux21n_in0,mux21n_in1;
   input mux21n_sel;
	
	mux2_1 m0[N-1:0](
	.mux21_out({mux21n_out[N-1:0]}),
	.mux21_in0({mux21n_in0[N-1:0]}),
	.mux21_in1({mux21n_in1[N-1:0]}),
	.mux21_sel({mux21n_sel})
);
endmodule 