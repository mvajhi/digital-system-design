`timescale 1ns/1ns

module q4 (input [2:0] a, input en, output [7:0] w);
    assign w = 
        (en == 1'b1)  ? 8'b0000 0000:
        (a == 3'b000) ? 8'b0000 0001:
        (a == 3'b001) ? 8'b0000 0010:
        (a == 3'b010) ? 8'b0000 0100:
        (a == 3'b011) ? 8'b0000 1000:
        (a == 3'b100) ? 8'b0001 0000:
        (a == 3'b101) ? 8'b0010 0000:
        (a == 3'b110) ? 8'b0100 0000:
        (a == 3'b111) ? 8'b1000 0000:
        8'bx;
endmodule