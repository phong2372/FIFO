module d_latch(
	Q,
	Q_not,
	D,
	C
);
	output Q,Q_not;
	input D,C;
	wire a,b;
	
	assign a = C & D;
	assign b = C & (~D);
	assign Q = a | (~Q_not);
	assign Q_not = b | (~Q);
endmodule 
