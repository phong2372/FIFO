module decoder3_8(
  decoder_out,
  binary_in,
  en
);

  input [2:0] binary_in;
  input en;
  output [7:0] decoder_out;
  
  and(decoder_out[7],binary_in[2],binary_in[1],binary_in[0],en);  
  and(decoder_out[6],binary_in[2],binary_in[1],~binary_in[0],en);  
  and(decoder_out[5],binary_in[2],~binary_in[1],binary_in[0],en);  
  and(decoder_out[4],binary_in[2],~binary_in[1],~binary_in[0],en);  
  and(decoder_out[3],~binary_in[2],binary_in[1],binary_in[0],en);  
  and(decoder_out[2],~binary_in[2],binary_in[1],~binary_in[0],en);  
  and(decoder_out[1],~binary_in[2],~binary_in[1],binary_in[0],en);  
  and(decoder_out[0],~binary_in[2],~binary_in[1],~binary_in[0],en); 
endmodule
