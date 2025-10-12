

module mux4_1_df1(y, I, s);
  output y;
  input [1:0]s;
  input [3:0] I;
  assign y=I[s];

endmodule

module mux4_1_df2(y, I, s);
  output y;
  input [1:0]s;
  input [3:0] I;
  assign y=((s==2'd0)?I[0]:
            (s==2'd1)?I[1]:
            (s==2'd2)?I[2]:
            I[3]);

endmodule

module mux4_1_bh(y, I, s);
  output reg y;
  input [1:0]s;
  input [3:0] I;

  always@(*) begin
    case(s)
      2'd0:y=I[0];
      2'd1:y=I[1];
      2'd2:y=I[2];
      2'd3:y=I[3];  
      // default: $display ("error");
      default: y = 1'bx;
    endcase
    end
endmodule
