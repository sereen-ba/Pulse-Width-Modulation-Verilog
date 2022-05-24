module CU(
input start,
input stop,
input CNTzero,
input reset,
input clock,
output reg writereg,
output reg writeCNT,
output reg enbCNT
);

reg s=0;

always @(posedge clock , posedge reset) begin

	if(reset)
		s<=0;
	else begin
		writereg=0;
		writeCNT=0;
		enbCNT=0;
		case(s)
		
			0: begin
				enbCNT=0;
				writereg=1;
				if(start) begin
					s<=1;
					writeCNT=1;
				end
				else
					s<=0;
			end
			
			1: begin
				enbCNT=1;
				if(stop)
					s<=0;
				else if(CNTzero)
					writeCNT=1;
				else
					s<=1;
			end
			
			default:s<=0;
			
		endcase
	end

end







endmodule 