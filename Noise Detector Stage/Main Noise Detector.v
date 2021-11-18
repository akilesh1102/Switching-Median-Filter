module Main_Noise_Detector (X0,X1,X2,X3,X4,X5,X6,X7,X8,FS_0,FS_1,FS_2,FS_3,FS_4,FS_5,FS_6,FS_7,FS_8,FP_0,FP_1,FP_2,FP_3,FP_4,FP_5,FP_6,FP_7,FP_8);
  input [7:0]X0,X1,X2,X3,X4,X5,X6,X7,X8;
  output FS_0,FS_1,FS_2,FS_3,FS_4,FS_5,FS_6,FS_7,FS_8;
  output FP_0,FP_1,FP_2,FP_3,FP_4,FP_5,FP_6,FP_7,FP_8;
  
  Noise_Detector_Pepper NDP (X0,X1,X2,X3,X4,X5,X6,X7,X8,FP_0,FP_1,FP_2,FP_3,FP_4,FP_5,FP_6,FP_7,FP_8);
    
  
  Noise_Detector_Salt NDS (X0,X1,X2,X3,X4,X5,X6,X7,X8,FS_0,FS_1,FS_2,FS_3,FS_4,FS_5,FS_6,FS_7,FS_8);

endmodule