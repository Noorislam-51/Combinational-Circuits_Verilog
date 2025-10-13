`timescale 1ns/1ns
`include "decoder_2_4.v"

module decoder_2_4_tb;
reg [1:0]I;
wire [3:0]y;
reg e;

decoder_2_4_bh decoder_2_4_1 (y,I,e);
initial begin 
  $dumpfile("decoder_2_4.v");
  $dumpvars(0,decoder_2_4_tb);
  $monitor ("time=%d\t e=%b\t I=%b\t y=%b",$time,e,I,y);

  e=1; I=2'b00; #10;
  e=1; I=2'b01; #10;
  e=1; I=2'b10; #10;
  e=1; I=2'b11; #10;
  e=0; I=2'b00; #10;  
  $finish;
  end 
  endmodule
  