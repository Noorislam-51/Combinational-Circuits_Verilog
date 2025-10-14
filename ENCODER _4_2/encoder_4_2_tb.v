`timescale 1ns/1ns
`include "encoder4_2.v"


module encoder4_2_tb;
	reg [3:0] I;
	wire[1:0] y;
  	reg e;
	
  encoder_4_2_df encoder_4_2_1(y,I,e);
  
  initial 
begin
  $dumpfile("encoder4_2.vcd");
  $dumpvars(0,encoder4_2_tb);
  $monitor("time=%d\t I=%b\t e=%b\t y=%b",$time,I,e,y);
  
  e=1 ;#10;
 I = 4'b1000; #10;
 I = 4'b0100; #10;
 I = 4'b0010; #10;
 I = 4'b0001; #10;
   #10 $finish;
  
  
end
endmodule

   eq = (a==b);
   gt= (a>b);
   sm= (a<b);
