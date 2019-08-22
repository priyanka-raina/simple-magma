module corebit_not (
  input in,
  output out
);
  assign out = ~in;

endmodule  // corebit_not

module SimpleInverter (
  input  a,
  output  nota
);


  wire  not_inst0__in;
  wire  not_inst0__out;
  corebit_not not_inst0(
    .in(not_inst0__in),
    .out(not_inst0__out)
  );

  assign not_inst0__in = a;

  assign nota = not_inst0__out;


endmodule  // SimpleInverter

