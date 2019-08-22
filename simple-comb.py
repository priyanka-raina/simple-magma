import magma as m
import mantle


@m.circuit.combinational
def logic(a : m.Bit) -> (m.Bit,):
  if a == m.bit(0):
    c = m.bit(1)
  else:
    c = m.bit(0)
  return (c,)

class Foo(m.Circuit):
  IO = ["a", m.In(m.Bit),
        "c", m.Out(m.Bit)]
  
  @classmethod
  def definition(io):
    c = logic(io.a)
    m.wire(c, io.c)

if __name__ == "__main__":
  m.compile("build/Foo", Foo, output="coreir-verilog")
