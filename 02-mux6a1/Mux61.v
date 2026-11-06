`timescale 1ns/1ns
module Mux61(
    input [7:0] D,
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [2:0] Sel,
    output reg [7:0] R,
    output reg en
);

wire [7:0] R1, R2, R3, R4, R5, R6;

op1 OP1(.A(A), .B(B), .C(C), .R1(R1));
op2 OP2(.A(A), .C(C), .R2(R2));
op3 OP3(.D(D), .R3(R3));
op4 OP4(.C(C), .D(D), .R4(R4));
op5 OP5(.D(D), .R5(R5));
op6 OP6(.B(B), .C(C), .R6(R6));

always @(*)
begin
    case(Sel)
        3'b000: begin
            R = R1;
            en = 1'b1;
        end
        3'b001: begin
            R = R2;
            en = 1'b1;
        end
        3'b010: begin
            R = R3;
            en = 1'b1;
        end
        3'b011: begin
            R = R4;
            en = 1'b1;
        end
        3'b100: begin
            R = R5;
            en = 1'b1;
        end
        3'b101: begin
            R = R6;
            en = 1'b1;
        end
        default: begin
            R = 8'b00000000;
            en = 1'b0;
        end
    endcase
end
endmodule