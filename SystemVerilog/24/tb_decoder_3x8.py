import cocotb
from cocotb.triggers import Timer

@cocotb.test()

async def tb_decoder_3x8(dut):

    sel = dut.sel
    en = dut.en
    dut.en.value = 0
    print("Enable   |  Selection   |  Result  ")
    for i in range(8):
        dut.sel.value = i
        await Timer(10,unit="ns")
        print(f"  0   |   {i:03b}    |   {int(dut.y.value):08b}")

    dut.en.value = 1
    for i in range(8):
        dut.sel.value = i
        await Timer(10,unit="ns")
        print(f"  0   |   {i:03b}    |   {int(dut.y.value):08b}")
