module Pepper_Noise_Detector (A,F);
  input [7:0]A;
  output F;
  wire W;

  assign W=A[0]|A[1]|A[2]|A[3]|A[4]|A[5]|A[6]|A[7];
  assign F=~W;
     
endmodule