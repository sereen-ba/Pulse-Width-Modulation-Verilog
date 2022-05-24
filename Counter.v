module Counter#(parameter W=16)(
input enable,
input load,
input reset,
input clk,
input [W-1:0] COMP0,
output  reg [W-1:0] CNT
);
reg [W-1:0] val=0;

//assign CNT=val;

always @(posedge clk,posedge reset,posedge load) begin

	if(reset) 
	
		CNT<=0; 
		
	else begin 
	
		if(load)  
		
			CNT<=COMP0; 
			
		else if(enable) 
		
			CNT<=CNT-1; 
			
	end

end





endmodule 