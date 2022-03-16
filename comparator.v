module comparator(
	out,
	in1,
	in2
);
	output out;
	input [2:0] in1,in2;
	wire [2:0] tmp; 
	xor n[2:0] (tmp,in1,in2);
	nor(out,tmp[2],tmp[1],tmp[0]);
endmodule 