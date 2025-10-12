`timescale 1ns/1ns
`include "full_adder.v"

module full_adder_tb;
  reg a,b,cin;
  wire c,s;
 

  full_adder_bh full_adder1 (s,c,a,b,cin);
  
   initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars (0,full_adder_tb);

    $monitor ("time=%d \t a=%b \t b=%b \t cin=%b \t s=%b \t c=%b",$time,a,b,cin,s,c);
      #10 a=0; b=0; cin=0;
      #10 a=0; b=0; cin=1;
      #10 a=0; b=1; cin=0;
      #10 a=0; b=1; cin=1;
      #10 a=1; b=0; cin=0;
      #10 a=1; b=0; cin=1;
      #10 a=1; b=1; cin=0;
      #10 a=1; b=1; cin=1;
      #10 $finish;

   end
   endmodule
   

