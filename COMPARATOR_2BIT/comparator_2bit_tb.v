  `timescale 1ns/1ns
  `include "comparator_2bit.v"

  module comparator_2bit_tb;
    comparator_2bit_df comparator_2bit_df_1(eq,gt,sm,a,b);
    reg [1:0]a;
    reg [1:0]b;
    wire eq,gt,sm;
    integer i,j;

    initial begin 
      $dumpfile("comparator_2bit.vcd");
      $dumpvars(0,comparator_2bit_tb);

    $monitor("time=%d \t a=%b\t b=%b \t eq=%b\t sm=%b\t gt=%b",$time,a,b,eq,sm,gt);
    // Apply all 256 combinations
    for (i = 0; i < 8; i = i + 1) begin
      for (j = 0; j < 8; j = j + 1) begin
        a = i; 
        b = j; 
        #10;
      end
    end

   
    
  $finish;
    end
    endmodule


