`timescale 1ns/1ns
`include "half_adder.v"

module half_adder_tb;
  reg a, b;
  wire s, c;

  // half_adder_bh half_adder1 (s,c,a,b);
  // half_adder_df half_adder1 (s,c,a,b);
  half_adder_st half_adder1 (s,c,a,b);

  initial begin 
  
  $monitor ("time = %d \t a = %b \t b=%b \t s=%b \t c=%b" ,$time,a,b,s,c);
    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10 $finish;
    
  end 

  initial begin 
      $dumpfile ("half_adder.vcd");
      $dumpvars(0,half_adder_tb);
    end 
endmodule
