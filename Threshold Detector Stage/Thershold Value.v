module M_Thershold_Value(Clk,Reset,CV,MV,AD);
  input Clk;
  input Reset;
  input [7:0] CV;
  input [7:0] MV;
  output [7:0] AD;
  
  reg [7:0] CV_Registered;
  wire [7:0] CV_NOT;
  wire [8:0] Nine_Bit_Sum;
  wire [7:0] XOR_Output;
  
  always @(posedge Clk) 
  
  begin
    if (Reset) 
      CV_Registered <= 8'b0 ;
      else
        CV_Registered <= CV;
  end

        assign CV_NOT = ~CV_Registered;
        assign Nine_Bit_Sum = {1'b0,CV_NOT} + {1'b0,MV};
        assign XOR_Output = Nine_Bit_Sum[7:0] ^ {8{~Nine_Bit_Sum[8]}};
        assign AD = XOR_Output + { {7{1'b0}} , Nine_Bit_Sum[8]};
        

endmodule     