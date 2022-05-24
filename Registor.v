module Registor #(parameter w=16)(

	input write,
	input reset,
	input clk,
	input [w-1:0] In,
	output [w-1:0] Out

);
//to save the input values in reg
reg [w-1:0] regis;

always @(posedge clk, posedge reset)
begin 
	if (reset)
		regis<=0;
	else if (write)
		regis<=In;

end
assign Out= regis;

endmodule 