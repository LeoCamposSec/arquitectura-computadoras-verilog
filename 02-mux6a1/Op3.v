`timescale 1ns/1ns
module op3(
	input [7:0] D,
	output reg [7:0] R3
);

always @(*)
begin 
	R3 = D << 2;
end
endmodule