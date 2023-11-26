/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* src = "q2_a.sv:1" *)
module q2_a(a, b, ci, sum, co);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  (* src = "q2_a.sv:1" *)
  input a;
  (* src = "q2_a.sv:1" *)
  input b;
  (* src = "q2_a.sv:1" *)
  input ci;
  (* src = "q2_a.sv:1" *)
  output co;
  (* src = "q2_a.sv:1" *)
  output sum;
  NOR _10_ (
    .A(b),
    .B(_01_),
    .Y(_05_)
  );
  NOR _11_ (
    .A(_03_),
    .B(_05_),
    .Y(sum)
  );
  NAND _12_ (
    .A(_09_),
    .B(_04_),
    .Y(co)
  );
  NOT _13_ (
    .A(b),
    .Y(_06_)
  );
  NOR _14_ (
    .A(ci),
    .B(a),
    .Y(_07_)
  );
  NOT _15_ (
    .A(_07_),
    .Y(_08_)
  );
  NAND _16_ (
    .A(ci),
    .B(a),
    .Y(_09_)
  );
  NOT _17_ (
    .A(_09_),
    .Y(_00_)
  );
  NOR _18_ (
    .A(_07_),
    .B(_00_),
    .Y(_01_)
  );
  NAND _19_ (
    .A(_08_),
    .B(_09_),
    .Y(_02_)
  );
  NOR _20_ (
    .A(_06_),
    .B(_02_),
    .Y(_03_)
  );
  NAND _21_ (
    .A(b),
    .B(_01_),
    .Y(_04_)
  );
endmodule

(* dynports =  1  *)
(* top =  1  *)
(* src = "q2_c.sv:1" *)
module q2_c(a, b, ci, w, co);
  (* src = "q2_c.sv:1" *)
  input [3:0] a;
  (* src = "q2_c.sv:1" *)
  input [3:0] b;
  (* src = "q2_c.sv:2" *)
  wire [4:0] carry;
  (* src = "q2_c.sv:1" *)
  input ci;
  (* src = "q2_c.sv:1" *)
  output co;
  (* src = "q2_c.sv:1" *)
  output [3:0] w;
  (* module_not_derived = 32'd1 *)
  (* src = "q2_c.sv:6" *)
  q2_a _0_ (
    .a(a[0]),
    .b(b[0]),
    .ci(ci),
    .co(carry[1]),
    .sum(w[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "q2_c.sv:6" *)
  q2_a _1_ (
    .a(a[1]),
    .b(b[1]),
    .ci(carry[1]),
    .co(carry[2]),
    .sum(w[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "q2_c.sv:6" *)
  q2_a _2_ (
    .a(a[2]),
    .b(b[2]),
    .ci(carry[2]),
    .co(carry[3]),
    .sum(w[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "q2_c.sv:6" *)
  q2_a _3_ (
    .a(a[3]),
    .b(b[3]),
    .ci(carry[3]),
    .co(co),
    .sum(w[3])
  );
  assign { carry[4], carry[0] } = { co, ci };
endmodule
