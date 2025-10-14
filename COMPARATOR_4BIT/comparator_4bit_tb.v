  `timescale 1ns/1ns
  `include "comparator_4bit.v"

  module comparator_4bit_tb;
    comparator_4bit_df comparator_4bit_df_1(eq,gt,sm,a,b);
    reg [3:0]a;
    reg [3:0]b;
    wire eq,gt,sm;

    initial begin 
      $dumpfile("comparator_4bit.vcd");
      $dumpvars(0,comparator_4bit_tb);

      

      $monitor("time=%d \t a=%b\t b=%b \t eq=%b\t sm=%b\t gt=%b",$time,a,b,eq,sm,gt);

    a = 4'b0000; b = 4'b0000; #10;
    a = 4'b0101; b = 4'b0011; #10;  // a > b
    a = 4'b0010; b = 4'b0110; #10;  // a < b
    a = 4'b1111; b = 4'b1111; #10;  // equal
    a = 4'b1001; b = 4'b0111; #10;  // a > b
    a = 4'b0001; b = 4'b1000; #10;  // a b
  $finish;
    end
    endmodule


