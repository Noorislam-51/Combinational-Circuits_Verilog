`timescale 1ns/1ns
`include "mux2_1.v"

module mux2_1_tb;
reg [1:0] I;
reg s;
wire y;

mux2_1_df mux2_1_1(y,I,s);

initial begin
  $dumpfile("mux2_1.vcd");
  $dumpvars(0,mux2_1_tb);
  $monitor("time=%d\t I=%b\t s=%b\t y=%b",$time,I,s,y);
  
  
  // Test Cases
    I = 2'b10; s = 0; #10; // Expected y = 0 (I[0])
    I = 2'b01; s = 0; #10; // Expected y = 1 (I[0])
    I = 2'b10; s = 1; #10; // Expected y = 1 (I[1])
    I = 2'b01; s = 1; #10; // Expected y = 0 (I[1])
// End simulation
    #10 $finish;
  end
  endmodule
