

module mux2_1_df(y, I, s);
  output y;
  input s;
  input [1:0] I;

  assign y = s ? I[1] : I[0];
endmodule
