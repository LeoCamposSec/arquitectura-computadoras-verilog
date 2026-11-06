`timescale 1ns/1ns

module Alumips(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUctrl,
    output reg signed [31:0] ALUout,   
    output Zero
);
    always @(*) 
    begin
        case (ALUctrl)
            4'b0000: ALUout = A & B; // AND
            4'b0001: ALUout = A | B; // OR
            4'b0010: ALUout = A + B; // ADD
            4'b0011: ALUout = A - B; // SUB
            4'b0100: ALUout = A ^ B; // XOR
            4'b0101: ALUout = ~(A | B); // NOR
            4'b0110: ALUout = (A < B) ? 32'd1 : 32'd0; // SLT
            4'b0111: ALUout = (A == B) ? 32'd1 : 32'd0; // SEQ
            4'b1100: ALUout = ~(A & B); // NAND
            default: ALUout = 32'd0;
        endcase
    end
    
    assign Zero = (ALUout == 32'd0) ? 1'b1 : 1'b0;
endmodule  
