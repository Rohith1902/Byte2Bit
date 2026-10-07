import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock

@cocotb.test()

async def tb_johnson_counter(dut):
    #test case

    cocotb.start_soon(
           Clock(dut.clk,10,unit = "ns").start()
    )

    dut.rst_n.value = 0
    await Timer(10,unit = "ns")

    actual = dut.q.value.to_unsigned()

    if actual == 0b0000:
        print(f"PASS : Reset q = {actual:04b}")
    else:
        print(f"FAIL : Reset q = {actual:04b}")

    print("===========================================")
 
    dut.rst_n.value = 1

    expected = [
        0b0001,
        0b0011,
        0b0111,
        0b1111,
        0b1110,
        0b1100,
        0b1000,
        0b0000,
    ]

    for i in expected:
        await Timer(10, unit="ns")

        actual = dut.q.value.to_unsigned()

        assert actual == i ,f"Epected {i:04b}, got {actual:04b}"
        print(f"Pass : q = {actual : 04b}")

        print("==================================")

        if actual == i:
            print(f"Pass : q ==> Actual : ,{actual:04b},Expected : ,{i:04b}")
        else:
            print(f"Fail : q ==> Actual : ,{actual:04b},Expected : ,{i:04b}")
