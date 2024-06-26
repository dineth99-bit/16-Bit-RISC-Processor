module PC(clk, loadPC, incPC, address, execadd);
input clk;
input loadPC;
input incPC;
input [11:0] address;
output [11:0] execadd;

reg [11:0] execadd;

reg [11:0] temp;

always@( posedge clk)
begin
	if ( loadPC == 0 && incPC == 0 ) begin
	temp <= 12'h000;
	end
	else if (loadPC == 1 && incPC == 0 ) begin
	temp <= address;
	end
	else if (loadPC == 0 && incPC == 1 ) begin
	temp <= temp + 12'h001;
	end
	else 
	begin
	temp <= temp;
	end
	execadd <= temp;
end
endmodule