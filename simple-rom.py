import magma as m
import mantle
import fault
import fault.random

data_width = 16
addr_width = 4

# Randomize initial contents of memory
init = [fault.random.random_bv(data_width) for _ in range(1 << addr_width)]

class ROM(m.Circuit):
  IO = ["RADDR", m.In(m.Bits(addr_width)),
        "RDATA", m.Out(m.Bits(data_width)),
        "CLK", m.In(m.Clock)
  ]

  @classmethod
  def definition(io):
    regs = [mantle.Register(data_width, init=int(init[i])) for i in range(1 << addr_width)]
    for reg in regs:
      reg.I <= reg.O
    io.RDATA <= mantle.mux([reg.O for reg in regs], io.RADDR)

m.compile('build/ROM', ROM, output="coreir-verilog")
