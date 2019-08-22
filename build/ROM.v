module coreir_mux #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  input sel,
  output [width-1:0] out
);
  assign out = sel ? in1 : in0;

endmodule  // coreir_mux

// Generated from commonlib.muxn(N:2, width:16)
module muxn_U7 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [0:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[15:0] = in_data_0[15:0];

  assign _join__in1[15:0] = in_data_1[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U7

module coreir_reg #(parameter clk_posedge=1, parameter init=1, parameter width=1) (
  input clk,
  input [width-1:0] in,
  output [width-1:0] out
);
  reg [width-1:0] outReg=init;
  wire real_clk;
  assign real_clk = clk_posedge ? clk : ~clk;
  always @(posedge real_clk) begin
    outReg <= in;
  end
  assign out = outReg;

endmodule  // coreir_reg

module coreir_slice #(parameter hi=1, parameter lo=1, parameter width=1) (
  input [width-1:0] in,
  output [hi-lo-1:0] out
);
  assign out = in[hi-1:lo];

endmodule  // coreir_slice

// Generated from commonlib.muxn(N:4, width:16)
module muxn_U5 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [1:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U7 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U7 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[15:0] = in_data_2[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_3[15:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U5

// Generated from commonlib.muxn(N:8, width:16)
module muxn_U3 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [15:0] in_data_4,
  input [15:0] in_data_5,
  input [15:0] in_data_6,
  input [15:0] in_data_7,
  input [2:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [15:0] muxN_0__in_data_2;
  wire [15:0] muxN_0__in_data_3;
  wire [1:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U5 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [15:0] muxN_1__in_data_2;
  wire [15:0] muxN_1__in_data_3;
  wire [1:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U5 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice0__in;
  wire [1:0] sel_slice0__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice1__in;
  wire [1:0] sel_slice1__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[2];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_data_2[15:0] = in_data_2[15:0];

  assign muxN_0__in_data_3[15:0] = in_data_3[15:0];

  assign muxN_0__in_sel[1:0] = sel_slice0__out[1:0];

  assign muxN_1__in_data_0[15:0] = in_data_4[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_5[15:0];

  assign muxN_1__in_data_2[15:0] = in_data_6[15:0];

  assign muxN_1__in_data_3[15:0] = in_data_7[15:0];

  assign muxN_1__in_sel[1:0] = sel_slice1__out[1:0];

  assign sel_slice0__in[2:0] = in_sel[2:0];

  assign sel_slice1__in[2:0] = in_sel[2:0];


endmodule  // muxn_U3

// Generated from commonlib.muxn(N:16, width:16)
module muxn_U0 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_10,
  input [15:0] in_data_11,
  input [15:0] in_data_12,
  input [15:0] in_data_13,
  input [15:0] in_data_14,
  input [15:0] in_data_15,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [15:0] in_data_4,
  input [15:0] in_data_5,
  input [15:0] in_data_6,
  input [15:0] in_data_7,
  input [15:0] in_data_8,
  input [15:0] in_data_9,
  input [3:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [15:0] muxN_0__in_data_2;
  wire [15:0] muxN_0__in_data_3;
  wire [15:0] muxN_0__in_data_4;
  wire [15:0] muxN_0__in_data_5;
  wire [15:0] muxN_0__in_data_6;
  wire [15:0] muxN_0__in_data_7;
  wire [2:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U3 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [15:0] muxN_1__in_data_2;
  wire [15:0] muxN_1__in_data_3;
  wire [15:0] muxN_1__in_data_4;
  wire [15:0] muxN_1__in_data_5;
  wire [15:0] muxN_1__in_data_6;
  wire [15:0] muxN_1__in_data_7;
  wire [2:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U3 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_data_4(muxN_1__in_data_4),
    .in_data_5(muxN_1__in_data_5),
    .in_data_6(muxN_1__in_data_6),
    .in_data_7(muxN_1__in_data_7),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice0__in;
  wire [2:0] sel_slice0__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice1__in;
  wire [2:0] sel_slice1__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[3];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_data_2[15:0] = in_data_2[15:0];

  assign muxN_0__in_data_3[15:0] = in_data_3[15:0];

  assign muxN_0__in_data_4[15:0] = in_data_4[15:0];

  assign muxN_0__in_data_5[15:0] = in_data_5[15:0];

  assign muxN_0__in_data_6[15:0] = in_data_6[15:0];

  assign muxN_0__in_data_7[15:0] = in_data_7[15:0];

  assign muxN_0__in_sel[2:0] = sel_slice0__out[2:0];

  assign muxN_1__in_data_0[15:0] = in_data_8[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_9[15:0];

  assign muxN_1__in_data_2[15:0] = in_data_10[15:0];

  assign muxN_1__in_data_3[15:0] = in_data_11[15:0];

  assign muxN_1__in_data_4[15:0] = in_data_12[15:0];

  assign muxN_1__in_data_5[15:0] = in_data_13[15:0];

  assign muxN_1__in_data_6[15:0] = in_data_14[15:0];

  assign muxN_1__in_data_7[15:0] = in_data_15[15:0];

  assign muxN_1__in_sel[2:0] = sel_slice1__out[2:0];

  assign sel_slice0__in[3:0] = in_sel[3:0];

  assign sel_slice1__in[3:0] = in_sel[3:0];


endmodule  // muxn_U0

module Mux16xOut$Bits$16$$ (
  input [15:0] I0,
  input [15:0] I1,
  input [15:0] I10,
  input [15:0] I11,
  input [15:0] I12,
  input [15:0] I13,
  input [15:0] I14,
  input [15:0] I15,
  input [15:0] I2,
  input [15:0] I3,
  input [15:0] I4,
  input [15:0] I5,
  input [15:0] I6,
  input [15:0] I7,
  input [15:0] I8,
  input [15:0] I9,
  output [15:0] O,
  input [3:0] S
);


  // Instancing generated Module: commonlib.muxn(N:16, width:16)
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_0;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_1;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_10;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_11;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_12;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_13;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_14;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_15;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_2;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_3;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_4;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_5;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_6;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_7;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_8;
  wire [15:0] coreir_commonlib_mux16x16_inst0__in_data_9;
  wire [3:0] coreir_commonlib_mux16x16_inst0__in_sel;
  wire [15:0] coreir_commonlib_mux16x16_inst0__out;
  muxn_U0 coreir_commonlib_mux16x16_inst0(
    .in_data_0(coreir_commonlib_mux16x16_inst0__in_data_0),
    .in_data_1(coreir_commonlib_mux16x16_inst0__in_data_1),
    .in_data_10(coreir_commonlib_mux16x16_inst0__in_data_10),
    .in_data_11(coreir_commonlib_mux16x16_inst0__in_data_11),
    .in_data_12(coreir_commonlib_mux16x16_inst0__in_data_12),
    .in_data_13(coreir_commonlib_mux16x16_inst0__in_data_13),
    .in_data_14(coreir_commonlib_mux16x16_inst0__in_data_14),
    .in_data_15(coreir_commonlib_mux16x16_inst0__in_data_15),
    .in_data_2(coreir_commonlib_mux16x16_inst0__in_data_2),
    .in_data_3(coreir_commonlib_mux16x16_inst0__in_data_3),
    .in_data_4(coreir_commonlib_mux16x16_inst0__in_data_4),
    .in_data_5(coreir_commonlib_mux16x16_inst0__in_data_5),
    .in_data_6(coreir_commonlib_mux16x16_inst0__in_data_6),
    .in_data_7(coreir_commonlib_mux16x16_inst0__in_data_7),
    .in_data_8(coreir_commonlib_mux16x16_inst0__in_data_8),
    .in_data_9(coreir_commonlib_mux16x16_inst0__in_data_9),
    .in_sel(coreir_commonlib_mux16x16_inst0__in_sel),
    .out(coreir_commonlib_mux16x16_inst0__out)
  );

  assign coreir_commonlib_mux16x16_inst0__in_data_0[15:0] = I0[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_1[15:0] = I1[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_10[15:0] = I10[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_11[15:0] = I11[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_12[15:0] = I12[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_13[15:0] = I13[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_14[15:0] = I14[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_15[15:0] = I15[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_2[15:0] = I2[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_3[15:0] = I3[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_4[15:0] = I4[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_5[15:0] = I5[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_6[15:0] = I6[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_7[15:0] = I7[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_8[15:0] = I8[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_data_9[15:0] = I9[15:0];

  assign coreir_commonlib_mux16x16_inst0__in_sel[3:0] = S[3:0];

  assign O[15:0] = coreir_commonlib_mux16x16_inst0__out[15:0];


endmodule  // Mux16xOut$Bits$16$$

module ROM (
  input  CLK,
  input [3:0] RADDR,
  output [15:0] RDATA
);


  wire [15:0] Mux16xOut$Bits$16$$_inst0__I0;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I1;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I10;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I11;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I12;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I13;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I14;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I15;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I2;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I3;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I4;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I5;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I6;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I7;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I8;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__I9;
  wire [15:0] Mux16xOut$Bits$16$$_inst0__O;
  wire [3:0] Mux16xOut$Bits$16$$_inst0__S;
  Mux16xOut$Bits$16$$ Mux16xOut$Bits$16$$_inst0(
    .I0(Mux16xOut$Bits$16$$_inst0__I0),
    .I1(Mux16xOut$Bits$16$$_inst0__I1),
    .I10(Mux16xOut$Bits$16$$_inst0__I10),
    .I11(Mux16xOut$Bits$16$$_inst0__I11),
    .I12(Mux16xOut$Bits$16$$_inst0__I12),
    .I13(Mux16xOut$Bits$16$$_inst0__I13),
    .I14(Mux16xOut$Bits$16$$_inst0__I14),
    .I15(Mux16xOut$Bits$16$$_inst0__I15),
    .I2(Mux16xOut$Bits$16$$_inst0__I2),
    .I3(Mux16xOut$Bits$16$$_inst0__I3),
    .I4(Mux16xOut$Bits$16$$_inst0__I4),
    .I5(Mux16xOut$Bits$16$$_inst0__I5),
    .I6(Mux16xOut$Bits$16$$_inst0__I6),
    .I7(Mux16xOut$Bits$16$$_inst0__I7),
    .I8(Mux16xOut$Bits$16$$_inst0__I8),
    .I9(Mux16xOut$Bits$16$$_inst0__I9),
    .O(Mux16xOut$Bits$16$$_inst0__O),
    .S(Mux16xOut$Bits$16$$_inst0__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst0__clk;
  wire [15:0] reg_P_inst0__in;
  wire [15:0] reg_P_inst0__out;
  coreir_reg #(.clk_posedge(1),.init(16'h6f67),.width(16)) reg_P_inst0(
    .clk(reg_P_inst0__clk),
    .in(reg_P_inst0__in),
    .out(reg_P_inst0__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst1__clk;
  wire [15:0] reg_P_inst1__in;
  wire [15:0] reg_P_inst1__out;
  coreir_reg #(.clk_posedge(1),.init(16'h4481),.width(16)) reg_P_inst1(
    .clk(reg_P_inst1__clk),
    .in(reg_P_inst1__in),
    .out(reg_P_inst1__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst10__clk;
  wire [15:0] reg_P_inst10__in;
  wire [15:0] reg_P_inst10__out;
  coreir_reg #(.clk_posedge(1),.init(16'hc1f9),.width(16)) reg_P_inst10(
    .clk(reg_P_inst10__clk),
    .in(reg_P_inst10__in),
    .out(reg_P_inst10__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst11__clk;
  wire [15:0] reg_P_inst11__in;
  wire [15:0] reg_P_inst11__out;
  coreir_reg #(.clk_posedge(1),.init(16'h99be),.width(16)) reg_P_inst11(
    .clk(reg_P_inst11__clk),
    .in(reg_P_inst11__in),
    .out(reg_P_inst11__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst12__clk;
  wire [15:0] reg_P_inst12__in;
  wire [15:0] reg_P_inst12__out;
  coreir_reg #(.clk_posedge(1),.init(16'hacdd),.width(16)) reg_P_inst12(
    .clk(reg_P_inst12__clk),
    .in(reg_P_inst12__in),
    .out(reg_P_inst12__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst13__clk;
  wire [15:0] reg_P_inst13__in;
  wire [15:0] reg_P_inst13__out;
  coreir_reg #(.clk_posedge(1),.init(16'h7846),.width(16)) reg_P_inst13(
    .clk(reg_P_inst13__clk),
    .in(reg_P_inst13__in),
    .out(reg_P_inst13__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst14__clk;
  wire [15:0] reg_P_inst14__in;
  wire [15:0] reg_P_inst14__out;
  coreir_reg #(.clk_posedge(1),.init(16'h39e3),.width(16)) reg_P_inst14(
    .clk(reg_P_inst14__clk),
    .in(reg_P_inst14__in),
    .out(reg_P_inst14__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst15__clk;
  wire [15:0] reg_P_inst15__in;
  wire [15:0] reg_P_inst15__out;
  coreir_reg #(.clk_posedge(1),.init(16'h7f2a),.width(16)) reg_P_inst15(
    .clk(reg_P_inst15__clk),
    .in(reg_P_inst15__in),
    .out(reg_P_inst15__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst2__clk;
  wire [15:0] reg_P_inst2__in;
  wire [15:0] reg_P_inst2__out;
  coreir_reg #(.clk_posedge(1),.init(16'h7dd7),.width(16)) reg_P_inst2(
    .clk(reg_P_inst2__clk),
    .in(reg_P_inst2__in),
    .out(reg_P_inst2__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst3__clk;
  wire [15:0] reg_P_inst3__in;
  wire [15:0] reg_P_inst3__out;
  coreir_reg #(.clk_posedge(1),.init(16'h9b6c),.width(16)) reg_P_inst3(
    .clk(reg_P_inst3__clk),
    .in(reg_P_inst3__in),
    .out(reg_P_inst3__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst4__clk;
  wire [15:0] reg_P_inst4__in;
  wire [15:0] reg_P_inst4__out;
  coreir_reg #(.clk_posedge(1),.init(16'h8b4c),.width(16)) reg_P_inst4(
    .clk(reg_P_inst4__clk),
    .in(reg_P_inst4__in),
    .out(reg_P_inst4__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst5__clk;
  wire [15:0] reg_P_inst5__in;
  wire [15:0] reg_P_inst5__out;
  coreir_reg #(.clk_posedge(1),.init(16'hccdd),.width(16)) reg_P_inst5(
    .clk(reg_P_inst5__clk),
    .in(reg_P_inst5__in),
    .out(reg_P_inst5__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst6__clk;
  wire [15:0] reg_P_inst6__in;
  wire [15:0] reg_P_inst6__out;
  coreir_reg #(.clk_posedge(1),.init(16'hd998),.width(16)) reg_P_inst6(
    .clk(reg_P_inst6__clk),
    .in(reg_P_inst6__in),
    .out(reg_P_inst6__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst7__clk;
  wire [15:0] reg_P_inst7__in;
  wire [15:0] reg_P_inst7__out;
  coreir_reg #(.clk_posedge(1),.init(16'h8d16),.width(16)) reg_P_inst7(
    .clk(reg_P_inst7__clk),
    .in(reg_P_inst7__in),
    .out(reg_P_inst7__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst8__clk;
  wire [15:0] reg_P_inst8__in;
  wire [15:0] reg_P_inst8__out;
  coreir_reg #(.clk_posedge(1),.init(16'hc0bd),.width(16)) reg_P_inst8(
    .clk(reg_P_inst8__clk),
    .in(reg_P_inst8__in),
    .out(reg_P_inst8__out)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  reg_P_inst9__clk;
  wire [15:0] reg_P_inst9__in;
  wire [15:0] reg_P_inst9__out;
  coreir_reg #(.clk_posedge(1),.init(16'hefd6),.width(16)) reg_P_inst9(
    .clk(reg_P_inst9__clk),
    .in(reg_P_inst9__in),
    .out(reg_P_inst9__out)
  );

  assign Mux16xOut$Bits$16$$_inst0__I0[15:0] = reg_P_inst0__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I1[15:0] = reg_P_inst1__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I10[15:0] = reg_P_inst10__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I11[15:0] = reg_P_inst11__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I12[15:0] = reg_P_inst12__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I13[15:0] = reg_P_inst13__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I14[15:0] = reg_P_inst14__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I15[15:0] = reg_P_inst15__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I2[15:0] = reg_P_inst2__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I3[15:0] = reg_P_inst3__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I4[15:0] = reg_P_inst4__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I5[15:0] = reg_P_inst5__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I6[15:0] = reg_P_inst6__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I7[15:0] = reg_P_inst7__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I8[15:0] = reg_P_inst8__out[15:0];

  assign Mux16xOut$Bits$16$$_inst0__I9[15:0] = reg_P_inst9__out[15:0];

  assign RDATA[15:0] = Mux16xOut$Bits$16$$_inst0__O[15:0];

  assign Mux16xOut$Bits$16$$_inst0__S[3:0] = RADDR[3:0];

  assign reg_P_inst0__clk = CLK;

  assign reg_P_inst0__in[15:0] = reg_P_inst0__out[15:0];

  assign reg_P_inst1__clk = CLK;

  assign reg_P_inst1__in[15:0] = reg_P_inst1__out[15:0];

  assign reg_P_inst10__clk = CLK;

  assign reg_P_inst10__in[15:0] = reg_P_inst10__out[15:0];

  assign reg_P_inst11__clk = CLK;

  assign reg_P_inst11__in[15:0] = reg_P_inst11__out[15:0];

  assign reg_P_inst12__clk = CLK;

  assign reg_P_inst12__in[15:0] = reg_P_inst12__out[15:0];

  assign reg_P_inst13__clk = CLK;

  assign reg_P_inst13__in[15:0] = reg_P_inst13__out[15:0];

  assign reg_P_inst14__clk = CLK;

  assign reg_P_inst14__in[15:0] = reg_P_inst14__out[15:0];

  assign reg_P_inst15__clk = CLK;

  assign reg_P_inst15__in[15:0] = reg_P_inst15__out[15:0];

  assign reg_P_inst2__clk = CLK;

  assign reg_P_inst2__in[15:0] = reg_P_inst2__out[15:0];

  assign reg_P_inst3__clk = CLK;

  assign reg_P_inst3__in[15:0] = reg_P_inst3__out[15:0];

  assign reg_P_inst4__clk = CLK;

  assign reg_P_inst4__in[15:0] = reg_P_inst4__out[15:0];

  assign reg_P_inst5__clk = CLK;

  assign reg_P_inst5__in[15:0] = reg_P_inst5__out[15:0];

  assign reg_P_inst6__clk = CLK;

  assign reg_P_inst6__in[15:0] = reg_P_inst6__out[15:0];

  assign reg_P_inst7__clk = CLK;

  assign reg_P_inst7__in[15:0] = reg_P_inst7__out[15:0];

  assign reg_P_inst8__clk = CLK;

  assign reg_P_inst8__in[15:0] = reg_P_inst8__out[15:0];

  assign reg_P_inst9__clk = CLK;

  assign reg_P_inst9__in[15:0] = reg_P_inst9__out[15:0];


endmodule  // ROM

