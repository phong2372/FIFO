module mux2_1(
	output mux21_out,
	input mux21_in0,
	input mux21_in1,
	input mux21_sel
);
	wire a1,a2;
	and(a1,mux21_in0,~mux21_sel);
	and(a2,mux21_sel,mux21_in1);
	or(mux21_out,a1,a2);
endmodule 
