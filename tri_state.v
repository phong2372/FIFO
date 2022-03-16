module tri_state (
	ts_out,
	ts_in,
	ts_sel
);
	input   ts_in, ts_sel;
    output  ts_out;
    tri     ts_out;

    bufif1  b1(ts_out, ts_in, ts_sel);
endmodule 