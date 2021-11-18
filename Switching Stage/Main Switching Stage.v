module Main_Switching_Stage (Clk,Rst,X0,X1,X2,X3,X4,X5,X6,X7,X8,MV,New_X0,New_X1,New_X2,New_X3,New_X4,New_X5,New_X6,New_X7,New_X8);
  input Clk,Rst;
  input [7:0]X0,X1,X2,X3,X4,X5,X6,X7,X8;
  input [7:0]MV;
  output [7:0]New_X0,New_X1,New_X2,New_X3,New_X4,New_X5,New_X6,New_X7,New_X8;

  M_Switching_Stage SD0 (Clk,Rst,X0,MV,New_X0);

  M_Switching_Stage SD1 (Clk,Rst,X1,MV,New_X1);

  M_Switching_Stage SD2 (Clk,Rst,X2,MV,New_X2);

  M_Switching_Stage SD3 (Clk,Rst,X3,MV,New_X3);

  M_Switching_Stage SD4 (Clk,Rst,X4,MV,New_X4);

  M_Switching_Stage SD5 (Clk,Rst,X5,MV,New_X5);

  M_Switching_Stage SD6 (Clk,Rst,X6,MV,New_X6);

  M_Switching_Stage SD7 (Clk,Rst,X7,MV,New_X7);

  M_Switching_Stage SD8 (Clk,Rst,X8,MV,New_X8);


 
    
endmodule    