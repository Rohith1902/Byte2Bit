import cocotb
from cocotb.triggers import Timer, RisingEdge
from cocotb.clock import Clock


@cocotb.test()
async def tb_shift_reg(dut):

    cocotb.start_soon(
        Clock(dut.clk, 10, unit="ns").start()
    )

    # INITIALIZE INPUTS
    dut.rst_n.value = 0
    dut.en.value = 0
    dut.serial_in.value = 0
    dut.data_in.value = 0
    dut.load.value = 0

    # RESET
    await Timer(2, unit="ns")

    if int(dut.q.value) == 0:
        dut._log.info(f"Reset PASSED: q = {dut.q.value}")
    else:
        dut._log.error(f"Reset FAILED: q = {dut.q.value}")

    # RELEASE RESET
    dut.rst_n.value = 1

    # PARALLEL LOAD: 1010
    dut.data_in.value = 0b1010
    dut.load.value = 1
    dut.en.value = 0

    await RisingEdge(dut.clk)
    await Timer(1, unit="ns")

    if int(dut.q.value) == 0b1010:
        dut._log.info(f"Parallel Load PASSED: q = {dut.q.value}")
    else:
        dut._log.error(f"Parallel Load FAILED: q = {dut.q.value}")

    # SHIFT IN 1: 1010 -> 0101
    dut.load.value = 0
    dut.en.value = 1
    dut.serial_in.value = 1

    await RisingEdge(dut.clk)
    await Timer(1, unit="ns")

    if int(dut.q.value) == 0b0101:
        dut._log.info(f"Shift PASSED: q = {dut.q.value}")
    else:
        dut._log.error(f"Shift FAILED: q = {dut.q.value}")

    # ENABLE HOLD: q remains 0101
    dut.en.value = 0
    dut.serial_in.value = 0

    await RisingEdge(dut.clk)
    await Timer(1, unit="ns")

    if int(dut.q.value) == 0b0101:
        dut._log.info(f"Enable Hold PASSED: q = {dut.q.value}")
    else:
        dut._log.error(f"Enable Hold FAILED: q = {dut.q.value}")

    dut._log.info("Test execution completed!")
