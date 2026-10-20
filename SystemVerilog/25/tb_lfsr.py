import cocotb
from cocotb.triggers import Timer,RisingEdge
from cocotb.clock import Clock

@cocotb.test()

async def tb_lfsr(dut):

    cocotb.start_soon(
        Clock(dut.clk,10,unit="ns").start()
    )

    dut.rst_n.value = 0
    await Timer(10,unit = "ns")

    dut.rst_n.value = 1

    dut._log.info("Clock   |   LFSR ")

    for i in range(0,15):
        await RisingEdge(dut.clk)
        dut._log.info(
            f"Cycle {i + 1} | LFSR Output {dut.q.value}"
        )