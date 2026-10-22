import cocotb
from cocotb.triggers import Timer,RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def tb_arrbiter4(dut):

    cocotb.start_soon(
        Clcok(dut.clk,unit = "ns").start()
    )

    