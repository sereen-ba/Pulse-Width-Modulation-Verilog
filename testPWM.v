module testPWM();

reg [15:0] period;
reg [15:0] active;
reg start;
reg stop;
reg reset;
reg clk;
wire pwmOut;

TOPPWM uut(period,active,start,stop,reset,clk,pwmOut);


initial begin
	period=0;
	active=0;
	start=0;
	stop=0;
	reset=0;
	clk=0;
	#5;
end


always #1 clk=~clk;


initial begin
	period=20;
	active=10;
	#5;
	start=1;
	#13;
	start=0;
	#1000;
	stop=1;
	#2;
	stop=0;
	#100
	period=20;
	active=15;
	#5;
	start=1;
	#13;
	start=0;
	#1000;
	stop=1;
	#2;
	stop=0;
	#100
	$stop;
end

endmodule 