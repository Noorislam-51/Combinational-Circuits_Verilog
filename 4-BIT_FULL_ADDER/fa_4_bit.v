
module full_adder(sum, cout, a, b, cin);
  input a, b, cin;
  output sum, cout;

  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

// structural_________
module fa_4_bit_st (cout,s,a,b,cin);
  input [3:0] a,b;
  output cout ;
  output [3:0] s;
  input cin;
  wire n1,n2,n0;

  full_adder fa0 (s[0], n0, a[0], b[0], cin);
  full_adder fa1 (s[1], n1, a[1], b[1], n0);
  full_adder fa2 (s[2], n2, a[2], b[2], n1);
  full_adder fa3 (s[3], cout, a[3], b[3], n2);
  
endmodule

// dataflow___________
module fa_4_bit_df(cout, s, a,b,cin);
  input cin;
  input [3:0] a,b;
  output cout;
  output [3:0] s;

  assign {cout ,s}= a+b+cin;
endmodule

// behavioral______________
module fa_4_bit_bh(cout, s, a,b,cin);
  input cin;
  input [3:0] a,b;
  output reg cout;
  output reg [3:0] s;
  
always @(a,b,cin)
 {cout ,s}= a+b+cin;
endmodule
