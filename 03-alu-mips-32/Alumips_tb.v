`timescale 1ns/1ns

module Alumips_tb();

reg signed [31:0] A_tb;
reg signed [31:0] B_tb;
reg [3:0] ALUctrl_tb;
wire signed [31:0] ALUout_tb;
wire Zero_tb;

Alumips DUT (
    .A(A_tb),
    .B(B_tb),
    .ALUctrl(ALUctrl_tb),
    .ALUout(ALUout_tb),
    .Zero(Zero_tb)
);

initial 
begin
	// ================= SUMA (0010) =================
	ALUctrl_tb = 4'b0010;
	A_tb = 32'd25;        B_tb = 32'd17;        #100;  // 42
	A_tb = 32'd100000;    B_tb = 32'd250000;    #100;  // 350000
	A_tb = -32'd40;       B_tb = 32'd15;        #100;  // -25
 
	// ================= RESTA (0011) =================
	ALUctrl_tb = 4'b0011;
	A_tb = 32'd90;        B_tb = 32'd35;        #100;  // 55
	A_tb = 32'd12;        B_tb = 32'd50;        #100;  // -38
	A_tb = 32'd7;         B_tb = 32'd7;         #100;  // 0, Zero = 1
 
	// ================= AND (0000) =================
	ALUctrl_tb = 4'b0000;
	A_tb = 32'hFF00FF00;  B_tb = 32'h0F0F0F0F;  #100;  // 0F000F00
	A_tb = 32'd12;        B_tb = 32'd10;        #100;  // 8
	A_tb = 32'hAAAA5555;  B_tb = 32'h5555AAAA;  #100;  // 0, Zero = 1
 
	// ================= OR (0001) =================
	ALUctrl_tb = 4'b0001;
	A_tb = 32'hFF00FF00;  B_tb = 32'h00FF00FF;  #100;  // FFFFFFFF
	A_tb = 32'd12;        B_tb = 32'd3;         #100;  // 15
	A_tb = 32'd0;         B_tb = 32'd0;         #100;  // 0, Zero = 1
 
	// ================= NOR (0101) =================
	ALUctrl_tb = 4'b0101;
	A_tb = 32'd0;         B_tb = 32'd0;         #100;  // FFFFFFFF
	A_tb = 32'hFFFFFFFF;  B_tb = 32'd0;         #100;  // 0, Zero = 1
	A_tb = 32'h0000FFFF;  B_tb = 32'hFFFF0000;  #100;  // 0, Zero = 1
 
	// ================= SLT (0110) =================
	ALUctrl_tb = 4'b0110;
	A_tb = 32'd5;         B_tb = 32'd20;        #100;  // 1
	A_tb = 32'd20;        B_tb = 32'd5;         #100;  // 0, Zero = 1
	A_tb = -32'd8;        B_tb = 32'd3;         #100;  // 1
 
	$stop;

end
endmodule
