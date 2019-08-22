import magma as m
import mantle

class SimpleInverter(m.Circuit):
    IO = ["a", m.In(m.Bit), "nota", m.Out(m.Bit)]

    @classmethod
    def definition(io):
        io.nota <= ~ io.a

m.compile('build/SimpleInverter', SimpleInverter, output="coreir-verilog")
