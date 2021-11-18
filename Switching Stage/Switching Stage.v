module M_Switching_Stage (Clk,Reset,CV,MV,XX);
  input Clk,Reset;
  input [7:0]CV,MV;
  output [7:0]XX;
  
  wire [7:0]AD;
  wire F;
  
  M_Thershold_Value SD0 (Clk,Reset,CV,MV,AD);

  M_Thershold_Detector SD1 (Clk,AD,F);
   
  Mux_2X1 SD2 (MV,CV,F,XX);
    
    
endmodule