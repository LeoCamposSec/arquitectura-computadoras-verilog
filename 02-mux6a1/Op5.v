`timescale 1ns/1ns
module op5(
	input [7:0] D,
	output reg [7:0] R5
);

always @(*)
begin
	R5 = D % 2;
end
endmodule