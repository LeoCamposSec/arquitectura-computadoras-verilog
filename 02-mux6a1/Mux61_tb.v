`timescale 1ns/1ns
module Mux61_tb();

    reg [2:0] Sel_tb;
    reg [3:0] A_tb;
    reg [3:0] B_tb;
    reg [3:0] C_tb;
    reg [7:0] D_tb;

    wire [7:0] R_tb;
    wire en_tb;

    integer vuelta;
    integer i;

    Mux61 DUT (
        .Sel(Sel_tb),
        .A(A_tb),
        .B(B_tb),
        .C(C_tb),
        .D(D_tb),
        .R(R_tb),
        .en(en_tb)
    );

    initial 
    begin
        A_tb = 4'b0000;
        B_tb = 4'b0000;
        C_tb = 4'b0000;
        D_tb = 8'b00000000;
        Sel_tb = 3'b000;

        for (vuelta = 0; vuelta < 8; vuelta = vuelta + 1)
        begin
            A_tb = 4'b0010 + vuelta[3:0];
            B_tb = 4'b1001 - vuelta[3:0];
            C_tb = 4'b0011 + vuelta[3:0];
            D_tb = 8'b00010100 + (vuelta[7:0] * 8'b00001111);

            for (i = 0; i < 8; i = i + 1)
            begin
                Sel_tb = i[2:0];
                #100;
            end
        end

        Sel_tb = 3'b110;
        #100;
        Sel_tb = 3'b111;
        #100;

        $stop;

    end

endmodule
