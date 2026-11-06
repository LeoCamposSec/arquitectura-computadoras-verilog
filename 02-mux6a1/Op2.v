`timescale 1ns/1ns
module op2(
	input [3:0] A,
	input [3:0] C,
	output reg [7:0] R2
);

always @(*)
begin
	R2 = A * C;
end
endmodule

