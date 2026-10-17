
import cocotb
from cocotb.triggers import Timer, RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def tb_seq_detector(dut):

    cocotb.start_soon(
        Clock(dut.clk, 10, unit="ns").start()
    )

    dut.rst_n.value = 0
    dut.din.value = 0

    await Timer(12, unit="ns")
    dut.rst_n.value = 1

    for bit in [1, 0, 1]:
        dut.din.value = bit

        await RisingEdge(dut.clk)
        await Timer(1, unit="ns")

        print(
            f"Clock = {dut.clk.value} "
            f"Din   = {dut.din.value} "
            f"Dout  = {dut.dout.value}"
        )
        print("===========================")

    assert int(dut.dout.value) == 1, "Sequence 101 not detected"
