import magma as m
import mantle

class SimpleALU(m.Circuit):
  IO = ["a", m.In(m.UInt(16)), "b", m.In(m.UInt(16)), "c", m.Out(m.UInt(16)), "config", m.In(m.Bits(2))]
  
  @m.circuit.combinational
  def execute_alu(av: m.UInt(16), bv: m.UInt(16), configv: m.Bits(2)) -> (m.UInt(16),):
    if configv == m.bits(0, 2):
      cv = av + bv
    elif configv == m.bits(1, 2):
      cv = av - bv
    elif configv == m.bits(2, 2):
      cv = av * bv
    else:
      cv = m.bits(0, 16)
    return (cv,)
     
  @classmethod
  def definition(io):
    c = io.execute_alu(io.a, io.b, io.config)
    m.wire(c, io.c)

m.compile('build/SimpleALU', SimpleALU, output="coreir-verilog")
