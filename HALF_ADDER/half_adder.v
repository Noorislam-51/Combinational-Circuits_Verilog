// structural-----------
module half_adder_st(s,c,a,b);
input a,b;
output s,c;

xor xor1 (s,a,b);
and and1 (c,a ,b );

endmodule

// dataflow----------------
module half_adder_bh(s,c,a,b);
input a,b ;
output s,c ;

assign s = a ^b;
assign c = a&b;

endmodule

// Behavioral--------------
module half_adder_bh(s,c,a,b);
input a,b;
output reg s,c;
 
always @(a,b)
begin 
  s= a^b;
  c=a&b;
end 
endmodule