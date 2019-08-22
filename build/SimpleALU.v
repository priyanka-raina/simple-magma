module coreir_add #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule  // coreir_add

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule  // coreir_const

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule  // corebit_const

module coreir_eq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 == in1;

endmodule  // coreir_eq

module coreir_mul #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 * in1;

endmodule  // coreir_mul

module coreir_mux #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  input sel,
  output [width-1:0] out
);
  assign out = sel ? in1 : in0;

endmodule  // coreir_mux

// Generated from commonlib.muxn(N:2, width:16)
module muxn_U1 (
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


endmodule  // muxn_U1

module coreir_not #(parameter width=1) (
  input [width-1:0] in,
  output [width-1:0] out
);
  assign out = ~in;

endmodule  // coreir_not

module Add16_cin (
  input  CIN,
  input [15:0] I0,
  input [15:0] I1,
  output [15:0] O
);


  wire  bit_const_0_None__out;
  corebit_const #(.value(0)) bit_const_0_None(
    .out(bit_const_0_None__out)
  );

  // Instancing generated Module: coreir.add(width:16)
  wire [15:0] coreir_add16_inst0__in0;
  wire [15:0] coreir_add16_inst0__in1;
  wire [15:0] coreir_add16_inst0__out;
  coreir_add #(.width(16)) coreir_add16_inst0(
    .in0(coreir_add16_inst0__in0),
    .in1(coreir_add16_inst0__in1),
    .out(coreir_add16_inst0__out)
  );

  // Instancing generated Module: coreir.add(width:16)
  wire [15:0] coreir_add16_inst1__in0;
  wire [15:0] coreir_add16_inst1__in1;
  wire [15:0] coreir_add16_inst1__out;
  coreir_add #(.width(16)) coreir_add16_inst1(
    .in0(coreir_add16_inst1__in0),
    .in1(coreir_add16_inst1__in1),
    .out(coreir_add16_inst1__out)
  );

  assign coreir_add16_inst1__in0[10] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[11] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[12] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[13] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[14] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[15] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[1] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[2] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[3] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[4] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[5] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[6] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[7] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[8] = bit_const_0_None__out;

  assign coreir_add16_inst1__in0[9] = bit_const_0_None__out;

  assign coreir_add16_inst0__in0[15:0] = coreir_add16_inst1__out[15:0];

  assign coreir_add16_inst0__in1[15:0] = I1[15:0];

  assign O[15:0] = coreir_add16_inst0__out[15:0];

  assign coreir_add16_inst1__in0[0] = CIN;

  assign coreir_add16_inst1__in1[15:0] = I0[15:0];


endmodule  // Add16_cin

module Sub16 (
  input [15:0] I0,
  input [15:0] I1,
  output [15:0] O
);


  wire  Add16_cin_inst0__CIN;
  wire [15:0] Add16_cin_inst0__I0;
  wire [15:0] Add16_cin_inst0__I1;
  wire [15:0] Add16_cin_inst0__O;
  Add16_cin Add16_cin_inst0(
    .CIN(Add16_cin_inst0__CIN),
    .I0(Add16_cin_inst0__I0),
    .I1(Add16_cin_inst0__I1),
    .O(Add16_cin_inst0__O)
  );

  // Instancing generated Module: coreir.not(width:16)
  wire [15:0] Invert16_inst0__in;
  wire [15:0] Invert16_inst0__out;
  coreir_not #(.width(16)) Invert16_inst0(
    .in(Invert16_inst0__in),
    .out(Invert16_inst0__out)
  );

  wire  bit_const_1_None__out;
  corebit_const #(.value(1)) bit_const_1_None(
    .out(bit_const_1_None__out)
  );

  assign Add16_cin_inst0__CIN = bit_const_1_None__out;

  assign Add16_cin_inst0__I0[15:0] = I0[15:0];

  assign Add16_cin_inst0__I1[15:0] = Invert16_inst0__out[15:0];

  assign O[15:0] = Add16_cin_inst0__O[15:0];

  assign Invert16_inst0__in[15:0] = I1[15:0];


endmodule  // Sub16

module Mux2xOut$Bits$16$$ (
  input [15:0] I0,
  input [15:0] I1,
  output [15:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] coreir_commonlib_mux2x16_inst0__in_data_0;
  wire [15:0] coreir_commonlib_mux2x16_inst0__in_data_1;
  wire [0:0] coreir_commonlib_mux2x16_inst0__in_sel;
  wire [15:0] coreir_commonlib_mux2x16_inst0__out;
  muxn_U1 coreir_commonlib_mux2x16_inst0(
    .in_data_0(coreir_commonlib_mux2x16_inst0__in_data_0),
    .in_data_1(coreir_commonlib_mux2x16_inst0__in_data_1),
    .in_sel(coreir_commonlib_mux2x16_inst0__in_sel),
    .out(coreir_commonlib_mux2x16_inst0__out)
  );

  assign coreir_commonlib_mux2x16_inst0__in_data_0[15:0] = I0[15:0];

  assign coreir_commonlib_mux2x16_inst0__in_data_1[15:0] = I1[15:0];

  assign coreir_commonlib_mux2x16_inst0__in_sel[0] = S;

  assign O[15:0] = coreir_commonlib_mux2x16_inst0__out[15:0];


endmodule  // Mux2xOut$Bits$16$$

module execute_alu (
  output [15:0] O0,
  input [15:0] av,
  input [15:0] bv,
  input [1:0] configv
);


  wire [15:0] Mux2xOut$Bits$16$$_inst0__I0;
  wire [15:0] Mux2xOut$Bits$16$$_inst0__I1;
  wire [15:0] Mux2xOut$Bits$16$$_inst0__O;
  wire  Mux2xOut$Bits$16$$_inst0__S;
  Mux2xOut$Bits$16$$ Mux2xOut$Bits$16$$_inst0(
    .I0(Mux2xOut$Bits$16$$_inst0__I0),
    .I1(Mux2xOut$Bits$16$$_inst0__I1),
    .O(Mux2xOut$Bits$16$$_inst0__O),
    .S(Mux2xOut$Bits$16$$_inst0__S)
  );

  wire [15:0] Mux2xOut$Bits$16$$_inst1__I0;
  wire [15:0] Mux2xOut$Bits$16$$_inst1__I1;
  wire [15:0] Mux2xOut$Bits$16$$_inst1__O;
  wire  Mux2xOut$Bits$16$$_inst1__S;
  Mux2xOut$Bits$16$$ Mux2xOut$Bits$16$$_inst1(
    .I0(Mux2xOut$Bits$16$$_inst1__I0),
    .I1(Mux2xOut$Bits$16$$_inst1__I1),
    .O(Mux2xOut$Bits$16$$_inst1__O),
    .S(Mux2xOut$Bits$16$$_inst1__S)
  );

  wire [15:0] Mux2xOut$Bits$16$$_inst2__I0;
  wire [15:0] Mux2xOut$Bits$16$$_inst2__I1;
  wire [15:0] Mux2xOut$Bits$16$$_inst2__O;
  wire  Mux2xOut$Bits$16$$_inst2__S;
  Mux2xOut$Bits$16$$ Mux2xOut$Bits$16$$_inst2(
    .I0(Mux2xOut$Bits$16$$_inst2__I0),
    .I1(Mux2xOut$Bits$16$$_inst2__I1),
    .O(Mux2xOut$Bits$16$$_inst2__O),
    .S(Mux2xOut$Bits$16$$_inst2__S)
  );

  wire [15:0] Sub16_inst0__I0;
  wire [15:0] Sub16_inst0__I1;
  wire [15:0] Sub16_inst0__O;
  Sub16 Sub16_inst0(
    .I0(Sub16_inst0__I0),
    .I1(Sub16_inst0__I1),
    .O(Sub16_inst0__O)
  );

  // Instancing generated Module: coreir.const(width:16)
  wire [15:0] const_0_16__out;
  coreir_const #(.value(16'h0000),.width(16)) const_0_16(
    .out(const_0_16__out)
  );

  // Instancing generated Module: coreir.const(width:2)
  wire [1:0] const_0_2__out;
  coreir_const #(.value(2'h0),.width(2)) const_0_2(
    .out(const_0_2__out)
  );

  // Instancing generated Module: coreir.const(width:2)
  wire [1:0] const_1_2__out;
  coreir_const #(.value(2'h1),.width(2)) const_1_2(
    .out(const_1_2__out)
  );

  // Instancing generated Module: coreir.const(width:2)
  wire [1:0] const_2_2__out;
  coreir_const #(.value(2'h2),.width(2)) const_2_2(
    .out(const_2_2__out)
  );

  // Instancing generated Module: coreir.add(width:16)
  wire [15:0] coreir_add16_inst0__in0;
  wire [15:0] coreir_add16_inst0__in1;
  wire [15:0] coreir_add16_inst0__out;
  coreir_add #(.width(16)) coreir_add16_inst0(
    .in0(coreir_add16_inst0__in0),
    .in1(coreir_add16_inst0__in1),
    .out(coreir_add16_inst0__out)
  );

  // Instancing generated Module: coreir.eq(width:2)
  wire [1:0] coreir_eq_2_inst0__in0;
  wire [1:0] coreir_eq_2_inst0__in1;
  wire  coreir_eq_2_inst0__out;
  coreir_eq #(.width(2)) coreir_eq_2_inst0(
    .in0(coreir_eq_2_inst0__in0),
    .in1(coreir_eq_2_inst0__in1),
    .out(coreir_eq_2_inst0__out)
  );

  // Instancing generated Module: coreir.eq(width:2)
  wire [1:0] coreir_eq_2_inst1__in0;
  wire [1:0] coreir_eq_2_inst1__in1;
  wire  coreir_eq_2_inst1__out;
  coreir_eq #(.width(2)) coreir_eq_2_inst1(
    .in0(coreir_eq_2_inst1__in0),
    .in1(coreir_eq_2_inst1__in1),
    .out(coreir_eq_2_inst1__out)
  );

  // Instancing generated Module: coreir.eq(width:2)
  wire [1:0] coreir_eq_2_inst2__in0;
  wire [1:0] coreir_eq_2_inst2__in1;
  wire  coreir_eq_2_inst2__out;
  coreir_eq #(.width(2)) coreir_eq_2_inst2(
    .in0(coreir_eq_2_inst2__in0),
    .in1(coreir_eq_2_inst2__in1),
    .out(coreir_eq_2_inst2__out)
  );

  // Instancing generated Module: coreir.mul(width:16)
  wire [15:0] coreir_mul16_inst0__in0;
  wire [15:0] coreir_mul16_inst0__in1;
  wire [15:0] coreir_mul16_inst0__out;
  coreir_mul #(.width(16)) coreir_mul16_inst0(
    .in0(coreir_mul16_inst0__in0),
    .in1(coreir_mul16_inst0__in1),
    .out(coreir_mul16_inst0__out)
  );

  assign Mux2xOut$Bits$16$$_inst0__I0[15:0] = const_0_16__out[15:0];

  assign Mux2xOut$Bits$16$$_inst0__I1[15:0] = coreir_mul16_inst0__out[15:0];

  assign Mux2xOut$Bits$16$$_inst1__I0[15:0] = Mux2xOut$Bits$16$$_inst0__O[15:0];

  assign Mux2xOut$Bits$16$$_inst0__S = coreir_eq_2_inst0__out;

  assign Mux2xOut$Bits$16$$_inst1__I1[15:0] = Sub16_inst0__O[15:0];

  assign Mux2xOut$Bits$16$$_inst2__I0[15:0] = Mux2xOut$Bits$16$$_inst1__O[15:0];

  assign Mux2xOut$Bits$16$$_inst1__S = coreir_eq_2_inst1__out;

  assign Mux2xOut$Bits$16$$_inst2__I1[15:0] = coreir_add16_inst0__out[15:0];

  assign O0[15:0] = Mux2xOut$Bits$16$$_inst2__O[15:0];

  assign Mux2xOut$Bits$16$$_inst2__S = coreir_eq_2_inst2__out;

  assign Sub16_inst0__I0[15:0] = av[15:0];

  assign Sub16_inst0__I1[15:0] = bv[15:0];

  assign coreir_eq_2_inst2__in1[1:0] = const_0_2__out[1:0];

  assign coreir_eq_2_inst1__in1[1:0] = const_1_2__out[1:0];

  assign coreir_eq_2_inst0__in1[1:0] = const_2_2__out[1:0];

  assign coreir_add16_inst0__in0[15:0] = av[15:0];

  assign coreir_add16_inst0__in1[15:0] = bv[15:0];

  assign coreir_eq_2_inst0__in0[1:0] = configv[1:0];

  assign coreir_eq_2_inst1__in0[1:0] = configv[1:0];

  assign coreir_eq_2_inst2__in0[1:0] = configv[1:0];

  assign coreir_mul16_inst0__in0[15:0] = av[15:0];

  assign coreir_mul16_inst0__in1[15:0] = bv[15:0];


endmodule  // execute_alu

module SimpleALU (
  input [15:0] a,
  input [15:0] b,
  output [15:0] c,
  input [1:0] config
);


  wire [15:0] execute_alu_inst0__O0;
  wire [15:0] execute_alu_inst0__av;
  wire [15:0] execute_alu_inst0__bv;
  wire [1:0] execute_alu_inst0__configv;
  execute_alu execute_alu_inst0(
    .O0(execute_alu_inst0__O0),
    .av(execute_alu_inst0__av),
    .bv(execute_alu_inst0__bv),
    .configv(execute_alu_inst0__configv)
  );

  assign c[15:0] = execute_alu_inst0__O0[15:0];

  assign execute_alu_inst0__av[15:0] = a[15:0];

  assign execute_alu_inst0__bv[15:0] = b[15:0];

  assign execute_alu_inst0__configv[1:0] = config[1:0];


endmodule  // SimpleALU

