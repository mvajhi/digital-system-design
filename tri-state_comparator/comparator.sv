`timescale 1ns/1ns
module tri_not(input a, en, output w);
    wire u, d;
    supply0 gnd;
    supply1 vdd;
    pmos #2 (u, vdd, a);
    pmos #2 (w, u, en);
    nmos #1 (w, d, ~en);
    nmos #1 (d, gnd, a);
endmodule

module comparator_1bit (input a, b, in, output w);
    wire i, j, k;
    xor #10 g1(i, a, b);
    nand #5 g2(j, i, b);
    nand #5 g3(w, j, k);
    tri_not g4 (.a(in), .en(i), .w(k));
endmodule