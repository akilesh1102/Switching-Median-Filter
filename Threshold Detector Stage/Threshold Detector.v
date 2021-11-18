module M_Thershold_Detector (Clk,T,F);
  input Clk;
  input [7:0]T;
  output F;
  reg F;
  
  always @ (posedge Clk)
  begin
  if (T==8'd27)
    F=1'b1;
  else if (T==8'd28)
    F=1'b1;
  else if (T==8'd29)
    F=1'b1;    
  else if (T==8'd30)
    F=1'b1;    
  else 
    F=1'b0;    
  end
  
endmodule