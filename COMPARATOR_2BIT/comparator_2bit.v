module comparator_2bit_df(eq,gt,sm,a,b);
  input [1:0]a;
  input [1:0]b;
  output eq,gt,sm;
  
  assign eq = (a==b);
  assign gt= (a>b);
  assign sm= (a<b);
  
endmodule 

module comparator_2bit_bh(eq,gt,sm,a,b);
  input [1:0]a;
  input [1:0]b;
  output reg eq,gt,sm;
  
  always @ (*)
    begin
  eq = (a==b);
   gt= (a>b);
   sm= (a<b);

    end
  
endmodule 
  
  