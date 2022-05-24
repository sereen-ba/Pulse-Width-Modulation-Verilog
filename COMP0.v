module COMP0#(parameter w=16)(
input [w-1:0] CNT,
output reg PWMd
);
always @(*)
if (CNT==0)
 PWMd<=1;
 else 
  PWMd<=0;


endmodule 