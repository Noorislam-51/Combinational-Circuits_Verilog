module encoder_4_2_df(y,I,e);
  input [3:0]I;
  input e;
  output [1:0]y;
  assign y={I[3]|I[2],I[3]|I[1]};
  
endmodule 

module encoder_4_2_bh(y,I,e);
  input [3:0]I;
  input e;
  output reg [1:0]y;
  

  always@(*) begin 
    case (I)
        4'b1000: y = 2'b11;
        4'b0100: y = 2'b10;
        4'b0010: y = 2'b01;
        4'b0001: y = 2'b00;
        default: y = 2'bxx; // Handles invalid inputs
    endcase
  end    
endmodule 

  