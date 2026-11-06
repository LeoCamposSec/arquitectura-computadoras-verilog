
module Sumador_short (
    input [15:0] AAA,
    input [15:0] BBB,
    output [15:0] RR
);

    wire c1, c2, c3, c4;

        SNibble SN1 (.AA(AAA[3:0]), .BB(BBB[3:0]), .Cin(1'b0), .Res({c1, RR[3:0]}));
        SNibble SN2 (.AA(AAA[7:4]), .BB(BBB[7:4]), .Cin(c1), .Res({c2, RR[7:4]}));
        SNibble SN3 (.AA(AAA[11:8]), .BB(BBB[11:8]), .Cin(c2), .Res({c3, RR[11:8]}));
        SNibble SN4 (.AA(AAA[15:12]), .BB(BBB[15:12]), .Cin(c3), .Res({c4, RR[15:12]}));

endmodule   
