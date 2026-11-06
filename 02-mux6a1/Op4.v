`timescale 1ns/1ns
module op4(
	input [3:0] C,
	input [7:0] D,
	output reg [7:0] R4
);

always @(*)
begin
	R4 = C * D;
end
endmodule
