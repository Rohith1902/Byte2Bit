import cocotb
from cocotb.triggers import Timer,RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def tb_arrbiter4(dut):

    cocotb.start_soon(
        Clock(dut.clk,10,unit = "ns").start()
    )

    dut.rst_n.value = 0;
    dut.req.value = 0

    await Timer(10,unit = "ns")

    dut._log.info("Clock   |   Present_State   |   Next_state ")

    dut.rst_n.value = 1;

    test_cases = [
        (0b0000, 0b0000),
        (0b0001, 0b0001),
        (0b0010, 0b0010),
        (0b0100, 0b0100),
        (0b1000, 0b1000),
        (0b1111, 0b0001),
        (0b1111, 0b0010),
        (0b1111, 0b0100),
        (0b1111, 0b1000),
        (0b1111, 0b0001),
        (0b0000, 0b0000),
    ]

    for request,expected in test_cases:
            dut.req.value = request
            await RisingEdge(dut.clk)
            await Timer(10,unit = "ns")


            await RisingEdge(dut.clk)
            actual =int(dut.gnt.value) 

            dut._log.info(
            "%04b | %04b | %04b",
            request, expected, actual
            )

            assert actual == expected ,(
                f"req = {request:04b}"
                f"expected={expected:04b}, "
                f"actual={actual:04b}"
            )

    