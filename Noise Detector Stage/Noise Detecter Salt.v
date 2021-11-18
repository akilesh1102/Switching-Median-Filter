module Noise_Detector_Salt (X0,X1,X2,X3,X4,X5,X6,X7,X8,F0,F1,F2,F3,F4,F5,F6,F7,F8);
  input [7:0]X0,X1,X2,X3,X4,X5,X6,X7,X8;
  output F0,F1,F2,F3,F4,F5,F6,F7,F8;
    
  
  Salt_Noise_Detector Pixel0 (X0,F0);
   
  Salt_Noise_Detector Pixel1 (X1,F1);
   
  Salt_Noise_Detector Pixel2 (X2,F2);
  
  Salt_Noise_Detector Pixel3 (X3,F3);
   
  Salt_Noise_Detector Pixel4 (X4,F4);
   
  Salt_Noise_Detector Pixel5 (X5,F5);

  Salt_Noise_Detector Pixel6 (X6,F6);
   
  Salt_Noise_Detector Pixel7 (X7,F7);
   
  Salt_Noise_Detector Pixel8 (X8,F8);
    
endmodule