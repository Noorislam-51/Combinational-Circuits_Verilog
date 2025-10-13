module decoder_2_4_df(y,I,e);
input [1:0]I;
output [3:0]y;
input e;

//   assign y[0] = ~a[1] & ~a[0];
//   assign y[1] = ~a[1] &  a[0];
//   assign y[2] =  a[1] & ~a[0];
//   assign y[3] =  a[1] &  a[0];
assign y={e& I[1]&I[0],//msb
          e& I[1]&~I[0],
          e& ~I[1]&I[0],
          e& ~I[1]&~I[0]};//lsb

endmodule

module decoder_2_4_bh(y,I,e);
input [1:0]I;
output reg [3:0]y;
input e;
always @ (*) begin 
case({e,I})
      3'b100: y = 4'b0001; // e=1, I=00
      3'b101: y = 4'b0010; // e=1, I=01
      3'b110: y = 4'b0100; // e=1, I=10
      3'b111: y = 4'b1000; // e=1, I=11
      default: y = 4'b0000; // e=0 → output disabled

  endcase
  end
endmodule


