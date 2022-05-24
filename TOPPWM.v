module TOPPWM(
input [15:0]  period,
input [15:0] active,
input start,
input stop,
input reset,
input clock,
output pwmOut
);

wire write,writeCNT,enbCNT;
wire CNTzero;

DataPath #16 DP(write,writeCNT,enbCNT,reset,clock,period,active,CNTzero,pwmOut);

CU sh(start,stop,CNTzero,reset,clock,write,writeCNT,enbCNT);


endmodule 