`timescale 1ns/1ns
module op1(
	input [3:0] A,
	input [3:0] B,
	input [3:0] C,
	output reg [7:0] R1
);

always @(*)
begin 
	R1 = {4'b0000, A} + {4'b0000, B} - {4'b0000, C};
end
endmodule
