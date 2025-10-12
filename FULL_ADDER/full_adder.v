 // ---------- Half Adder Module ----------
module HA(sum, carry, x, y);
  input x, y;
  output sum, carry;

  xor(sum, x, y);
  and(carry, x, y);
endmodule

// structural-----------
module full_adder_st(s,c,a,b,cin);
  input a,b,cin ;
  output s,c ;
  wire N1,N2,N3;
  
  HA HA1 (N1,N2,a,b);
  HA HA2 (s,N3,N1,cin);
  or OR1 (c, N2, N3);
  
endmodule

// dataflow---------

module full_adder_df(s,c,a,b,cin);
  input a,b,cin;
  output s,c;

  assign s= a^b^cin;
  assign c = (a&b)| (cin&(a^b));

endmodule


// behavioral-----------

module full_adder_bh(s,c,a,b,cin);
  input a,b,cin ;
  output reg s,c;
   always @ (*)
   begin 
    s= a^b^cin;
    c = (a&b)| (cin&(a^b));
   end
 endmodule 