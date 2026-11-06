
module SNibble (
	input [3:0] AA,
	input [3:0] BB,
	input Cin,
	output [4:0] Res
);

	wire c1, c2, c3, c4;
	wire [3:0] suma;

	FA FA1(.A(AA[0]), .B(BB[0]), .AE(Cin), .suma(suma[0]), .AS(c1));
	FA FA2(.A(AA[1]), .B(BB[1]), .AE(c1), .suma(suma[1]), .AS(c2));
	FA FA3(.A(AA[2]), .B(BB[2]), .AE(c2), .suma(suma[2]), .AS(c3));
	FA FA4(.A(AA[3]), .B(BB[3]), .AE(c3), .suma(suma[3]), .AS(c4));

	assign Res = {c4, suma};
endmodule
