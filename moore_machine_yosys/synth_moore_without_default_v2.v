/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "moore_without_default_v2.v:1" *)
module moor_without_default_v2(clk, rst, j, w);
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
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  (* src = "moore_without_default_v2.v:1" *)
  input clk;
  (* src = "moore_without_default_v2.v:1" *)
  input j;
  (* onehot = 32'd1 *)
  wire [4:0] ps;
  (* src = "moore_without_default_v2.v:1" *)
  input rst;
  (* src = "moore_without_default_v2.v:1" *)
  output w;
  NOT _14_ (
    .A(ps[1]),
    .Y(_05_)
  );
  NOT _15_ (
    .A(ps[3]),
    .Y(_06_)
  );
  NOT _16_ (
    .A(j),
    .Y(_07_)
  );
  NOR _17_ (
    .A(ps[2]),
    .B(ps[0]),
    .Y(_08_)
  );
  NOR _18_ (
    .A(j),
    .B(_08_),
    .Y(_01_)
  );
  NAND _19_ (
    .A(_05_),
    .B(_06_),
    .Y(_09_)
  );
  NOR _20_ (
    .A(ps[0]),
    .B(_09_),
    .Y(_10_)
  );
  NOR _21_ (
    .A(_07_),
    .B(_10_),
    .Y(_03_)
  );
  NAND _22_ (
    .A(j),
    .B(ps[4]),
    .Y(_11_)
  );
  NOT _23_ (
    .A(_11_),
    .Y(_00_)
  );
  NOR _24_ (
    .A(ps[4]),
    .B(_09_),
    .Y(_12_)
  );
  NOR _25_ (
    .A(j),
    .B(_12_),
    .Y(_02_)
  );
  NAND _26_ (
    .A(ps[2]),
    .B(j),
    .Y(_13_)
  );
  NOT _27_ (
    .A(_13_),
    .Y(_04_)
  );
  DFF_PP1 _28_ (
    .C(clk),
    .D(_01_),
    .Q(ps[0]),
    .R(rst)
  );
  DFF_PP0 _29_ (
    .C(clk),
    .D(_00_),
    .Q(ps[1]),
    .R(rst)
  );
  DFF_PP0 _30_ (
    .C(clk),
    .D(_02_),
    .Q(ps[2]),
    .R(rst)
  );
  DFF_PP0 _31_ (
    .C(clk),
    .D(_03_),
    .Q(ps[3]),
    .R(rst)
  );
  DFF_PP0 _32_ (
    .C(clk),
    .D(_04_),
    .Q(ps[4]),
    .R(rst)
  );
  assign w = ps[1];
endmodule