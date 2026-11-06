`timescale 1ns/1ns
module Sumador_short_TB();
    reg [15:0] AAA_TB;
    reg [15:0] BBB_TB;
    wire [15:0] RR_TB;

    Sumador_short UUT (
        .AAA(AAA_TB),
        .BBB(BBB_TB),
        .RR(RR_TB)
    );

    initial begin
        AAA_TB = 16'd15;
        BBB_TB = -16'd30;
        #100;

        AAA_TB = 16'd32767;
        BBB_TB = 16'd500;
        #100;

        AAA_TB = 16'd1256;
        BBB_TB = -16'd32767;
        #100;

        AAA_TB = 16'd150;
        BBB_TB = 16'd20;
        #100;

        AAA_TB = 16'd25;
        BBB_TB = 16'd100;
        #100;

        AAA_TB = 16'd32767;
        BBB_TB = 16'd1;
        #100;

        AAA_TB = 16'd65535;
        BBB_TB = 16'd1;
        #100;

        $stop;



    end


endmodule
