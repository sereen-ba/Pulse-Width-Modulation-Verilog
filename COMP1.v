module COMP1#(parameter w=16)(
input [w-1:0] registor,
input [w-1:0] CNT,
output reg PWMsig
);

always @(*)
if (CNT<=registor)
PWMsig<=1;
else 

PWMsig<=0;

endmodule 
