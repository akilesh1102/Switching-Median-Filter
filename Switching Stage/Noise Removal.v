module M_Main_Noise_Removal (Clk,X0,X1,X2,X3,X4,X5,X6,X7,X8,MV,F0,F1,F2,F3,F4,F5,F6,F7,F8,New_X0,New_X1,New_X2,New_X3,New_X4,New_X5,New_X6,New_X7,New_X8);
  input Clk;
  input [7:0]X0,X1,X2,X3,X4,X5,X6,X7,X8;
  input [7:0]MV;
  input F0,F1,F2,F3,F4,F5,F6,F7,F8;  
  output [7:0]New_X0,New_X1,New_X2,New_X3,New_X4,New_X5,New_X6,New_X7,New_X8;
  
  M_Noise_Removal SD0 (Clk,F0,X0,MV,New_X0);

  M_Noise_Removal SD1 (Clk,F1,X1,MV,New_X1);

  M_Noise_Removal SD2 (Clk,F2,X2,MV,New_X2);

  M_Noise_Removal SD3 (Clk,F3,X3,MV,New_X3);

  M_Noise_Removal SD4 (Clk,F4,X4,MV,New_X4);

  M_Noise_Removal SD5 (Clk,F5,X5,MV,New_X5);

  M_Noise_Removal SD6 (Clk,F6,X6,MV,New_X6);

  M_Noise_Removal SD7 (Clk,F7,X7,MV,New_X7);

  M_Noise_Removal SD8 (Clk,F8,X8,MV,New_X8);
    
  

endmodule