module M_Median_Filter (Clk,Rst,X0,X1,X2,X3,X4,X5,X6,X7,X8,New_X0_P,New_X1_P,New_X2_P,New_X3_P,New_X4_P,New_X5_P,New_X6_P,New_X7_P,New_X8_P,New_X0_S,New_X1_S,New_X2_S,New_X3_S,New_X4_S,New_X5_S,New_X6_S,New_X7_S,New_X8_S);
  input Clk,Rst;
  input [7:0]X0,X1,X2,X3,X4,X5,X6,X7,X8;
  output [7:0]New_X0_P,New_X1_P,New_X2_P,New_X3_P,New_X4_P,New_X5_P,New_X6_P,New_X7_P,New_X8_P;
  output [7:0]New_X0_S,New_X1_S,New_X2_S,New_X3_S,New_X4_S,New_X5_S,New_X6_S,New_X7_S,New_X8_S;
  wire [7:0]MV;
  wire FS_0,FS_1,FS_2,FS_3,FS_4,FS_5,FS_6,FS_7,FS_8;						// FS Value = 1 means Salt Noise Detected 
  wire FP_0,FP_1,FP_2,FP_3,FP_4,FP_5,FP_6,FP_7,FP_8;						// FP Value = 1 means Pepper Noise Detected 
  wire [7:0]N_X0_P,N_X1_P,N_X2_P,N_X3_P,N_X4_P,N_X5_P,N_X6_P,N_X7_P,N_X8_P;
  wire [7:0]N_X0_S,N_X1_S,N_X2_S,N_X3_S,N_X4_S,N_X5_S,N_X6_S,N_X7_S,N_X8_S;    
  wire [7:0]X4_MV;
  wire [7:0]W0,W1,W2,W3,W4,W5,W6,W7,W8;

  
  rof Sorting_Module(X0,X1,X2,X3,X4,X5,X6,X7,X8,MV,W0,W1,W2,W3,W4,W5,W6,W7,W8);

  assign X4_MV=MV;

 
  Main_Noise_Detector Noise_Detector (X0,X1,X2,X3,X4_MV,X5,X6,X7,X8,
				      FS_0,FS_1,FS_2,FS_3,FS_4,FS_5,FS_6,FS_7,FS_8,
				      FP_0,FP_1,FP_2,FP_3,FP_4,FP_5,FP_6,FP_7,FP_8);

  M_Main_Noise_Removal Salt_Noise_Removal (Clk,X0,X1,X2,X3,X4_MV,X5,X6,X7,X8,MV,
					   FS_0,FS_1,FS_2,FS_3,FS_4,FS_5,FS_6,FS_7,FS_8,
					   N_X0_S,N_X1_S,N_X2_S,N_X3_S,N_X4_S,N_X5_S,N_X6_S,N_X7_S,N_X8_S);

  Main_Switching_Stage Switching_Salt (Clk,Rst,N_X0_S,N_X1_S,N_X2_S,N_X3_S,N_X4_S,N_X5_S,N_X6_S,N_X7_S,N_X8_S,MV,
				       New_X0_S,New_X1_S,New_X2_S,New_X3_S,New_X4_S,New_X5_S,New_X6_S,New_X7_S,New_X8_S); 


  M_Main_Noise_Removal Pepper_Noise_Removal (Clk,X0,X1,X2,X3,X4_MV,X5,X6,X7,X8,MV,
					    FP_0,FP_1,FP_2,FP_3,FP_4,FP_5,FP_6,FP_7,FP_8,
					    N_X0_P,N_X1_P,N_X2_P,N_X3_P,N_X4_P,N_X5_P,N_X6_P,N_X7_P,N_X8_P);
					    
				
 Main_Switching_Stage Switching_Peper ( Clk,Rst,N_X0_P,N_X1_P,N_X2_P,N_X3_P,N_X4_P,N_X5_P,N_X6_P,N_X7_P,N_X8_P,MV,
				       New_X0_P,New_X1_P,New_X2_P,New_X3_P,New_X4_P,New_X5_P,New_X6_P,New_X7_P,New_X8_P);
endmodule