module DataPath #(parameter W=16)(
input write,
input writeCNT,
input enbCNT,
input reset,
input clock,
input [W-1:0] PWMPeriod, 
input [W-1:0] ActivePeriod,
output CNTzero,
output pwmOut
);

wire [W-1:0] comp0Out;
wire [W-1:0] comp1Out;
wire [W-1:0] CNTout;

// registers to hold period, active, and counter value

Registor #W comp0(write,reset,clock,PWMPeriod,comp0Out);
Registor #W comp1(write,reset,clock,ActivePeriod,comp1Out);
// down counter 16 bit for comp0out
Counter #W CNT(enbCNT,writeCNT,reset,clock,comp0Out,CNTout);

 COMP0 #W zeroComparator(CNTout, CNTzero);
 COMP1 #W one(comp1Out,CNTout,pwmOut);



endmodule 