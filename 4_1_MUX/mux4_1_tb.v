`timescale 1ns/1ns
`include "mux4_1.v"

module mux4_1_tb;
reg [3:0] I;
reg[1:0] s;
wire y;

mux4_1_df2 mux4_1_1(y,I,s);

initial 
begin
  $dumpfile("mux4_1.vcd");
  $dumpvars(0,mux4_1_tb);
  $monitor("time=%d\t I=%b\t s=%b\t y=%b",$time,I,s,y);
  
  
  // Test Cases
  s=2'b00;  I=4'b0000; #10;
  s=2'b01;  I=4'b0010; #10;
  s=2'b10;  I=4'b0100; #10;
  s=2'b11;  I=4'b1000; #10;
  // End simulation
  #10 $finish;
  end
endmodule
