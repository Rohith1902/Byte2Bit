import cocotb
from cocotb.triggers import Timer

@cocotb.test()

async def test_mux(dut):

    dut.in0.value = 0
    dut.in1.value = 1
    dut.in2.value = 0
    dut.in3.value = 1

    dut.sel.value = 0
    await Timer(10, units = "ns")
    print("Sel = ",dut.sel.value," | y = ",dut.y.value)
    if (dut.in0.value == dut.y.value):
        print("TEST IS PASSED SUCESSFULLY \n\n\n")
    else :
        print("TEST IS FAILED SUCESSFULLY \n\n\n")


    dut.sel.value = 1
    await Timer(10, units = "ns")
    print("Sel = ",dut.sel.value," | y = ",dut.y.value)
    if (dut.in1.value == dut.y.value):
        print("TEST IS PASSED SUCESSFULLY \n\n\n")
    else :
        print("TEST IS FAILED SUCESSFULLY \n\n\n")

    dut.sel.value = 2
    await Timer(10, units = "ns")
    print("Sel = ",dut.sel.value," | y = ",dut.y.value)
    if (dut.in2.value == dut.y.value):
        print("TEST IS PASSED SUCESSFULLY \n\n\n")
    else :
        print("TEST IS FAILED SUCESSFULLY \n\n\n")

    dut.sel.value = 3
    await Timer(10, units = "ns")
    print("Sel = ",dut.sel.value," | y = ",dut.y.value)
    if (dut.in3.value == dut.y.value):
        print("TEST IS PASSED SUCESSFULLY \n\n\n")
    else :
        print("TEST IS FAILED SUCESSFULLY \n\n\n")
