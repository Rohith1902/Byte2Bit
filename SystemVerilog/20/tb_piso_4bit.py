#Not yet completed


import cocotb
from cocotb.triggers import Timer,RisingEdge
from cocotb.clock import Clock


@cocotb.test()

async def tb_piso_4bit(dut):


    cocotb.start_soon(
        Clock(dut.clock,10,unit= "ns".start())
    )

    dut.rst_n.value = 0;
    dut.load.value = 0;
    dut.data_in.value = 0;

    await Timer(2,unit="ns")

    dut.rst_n.value = 10

    await RisingEdge(dut.clk)
    await Timer(1,unit = "ns")

    dut._log.info(f"Serial output : {dut.serial_out.value}")






