module Salt_Noise_Detector (A,F);
  input [7:0]A;
  output F;
  
  assign F=A[0]&A[1]&A[2]&A[3]&A[4]&A[5]&A[6]&A[7];
  
endmodule