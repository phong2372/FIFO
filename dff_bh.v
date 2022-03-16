module dff_bh (
	output reg q,
	input d,
	input reset,
	input clk
);
	always @ (posedge clk or posedge reset)
		if (reset)
			q <= 0;
		else 
			q <= d;
endmodule 