module M_Noise_Removal (Clk,FS,X0,MV,New_X0);
  input Clk;
  input FS;
  input [7:0]X0,MV;
  output [7:0]New_X0;
  reg [7:0]New_X0;
  
  always @ (posedge Clk)
  begin
  if(FS)
    New_X0=MV;
  else
    New_X0=X0;
  end
endmodule