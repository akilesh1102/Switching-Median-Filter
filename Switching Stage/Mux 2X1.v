module Mux_2X1 (MV,CV,Sel,Out);
  input [7:0]MV,CV;
  input Sel;
  output [7:0]Out;
  reg [7:0]Out;
  
  always @ (MV,CV,Sel)
  begin
  if (Sel)
    Out=MV;
  else
    Out=CV;
  end
  
endmodule