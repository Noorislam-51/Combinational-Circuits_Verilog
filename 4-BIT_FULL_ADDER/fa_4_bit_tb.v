`timescale 1ns/1ns
`include "fa_4_bit.v"

module fa_4_bit_tb;
  reg cin;
  reg [3:0] a,b;
  wire cout;
  wire [3:0] s;

  // Instantiation is correct
  fa_4_bit_bh fa_4_bit1(cout, s, a, b, cin);
  
  initial begin 
    integer i,j,k;
    
    $dumpfile("fa_4_bit.vcd");
    $dumpvars(0, fa_4_bit_tb);

    $monitor("time=%0d \t a=%b\t b=%b \t cin=%b\t cout=%b\t s=%b", $time, a, b, cin, cout, s);
    
    // Initialize inputs
    #10 a=0; b=0; cin=0;
    
    // Test stimulus loops (nested 'initial' removed)
    for (i=0; i<16; i=i+1) begin
      a = i;
      for (j=0; j<16; j=j+1) begin
        b = j;
        for (k=0; k<2; k=k+1) begin
          cin = k;
          #10; // Wait 10ns for each input combination
        end
      end
    end
    
    // End the simulation *after* the loops are done
    #20 $finish; 
  end
endmodule