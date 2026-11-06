`timescale 1ns/1ns
module op6(
	input [3:0] B,
	input [3:0] C,
	output reg [7:0] R6
);

always @(*)
begin
	R6 = {4'b0000, B} + {4'b0000, C};
end
endmodule