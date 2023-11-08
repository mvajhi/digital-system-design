`timescale 1ns/1ns
module tbq7();
    logic [0:14] inp = 15'b0;
    wire [0:3] out;
    q7 gate(.y(out), .in(inp));
    initial begin
        // logic table
        #300 inp = 15'b000000000000000;
        #300 inp = 15'b000000000000001;
        #300 inp = 15'b000000000000011;
        #300 inp = 15'b000000000000111;
        #300 inp = 15'b000000000001111;
        #300 inp = 15'b000000000011111;
        #300 inp = 15'b000000000111111;
        #300 inp = 15'b000000001111111;
        #300 inp = 15'b000000011111111;
        #300 inp = 15'b000000111111111;
        #300 inp = 15'b000001111111111;
        #300 inp = 15'b000011111111111;
        #300 inp = 15'b000111111111111;
        #300 inp = 15'b001111111111111;
        #300 inp = 15'b011111111111111;
        #300 inp = 15'b111111111111111;
        #300 $stop;
    end
endmodule
