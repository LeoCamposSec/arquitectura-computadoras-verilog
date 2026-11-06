
module FA(
	input A,
	input B,
	output AE,
	output suma,
	output AS
);
	
	wire c1,c2,c3;

	HA HA1(.a(A), .b(B), .s(c1), .as(c2));
	HA HA2(.a(c1), .b(AE), .s(suma), .as(c3));
	
	assign AS = c2 | c3;

endmodule
