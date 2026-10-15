import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def tb_alu(dut):
    a = dut.a
    b = dut.b
    op = dut.op

    #Addition 
    a.value = 10
    b.value = 5
    op.value = 0
    await Timer(10,unit="ns")
    assert int(dut.result.value) == 15,"Addition Failed"
    assert int(dut.carry.value) == 0,"Carry Failed"
    assert int(dut.zero.value) == 0,"Addition zero falg is failed"


    #Subtraction
    op.value = 1
    await Timer(10,unit="ns")
    assert int(dut.result.value) == 5,"Subtraction is failed"

    # AND: 1010 & 0101 = 0000
    op.value = 2
    await Timer(10, unit="ns")

    assert int(dut.result.value) == 0, "AND failed"
    assert int(dut.zero.value) == 1, "AND zero flag failed"

    # OR: 1010 | 0101 = 1111
    op.value = 3
    await Timer(10, unit="ns")

    assert int(dut.result.value) == 15, "OR failed"

    # XOR: 1010 ^ 0101 = 1111
    op.value = 4
    await Timer(10, unit="ns")

    assert int(dut.result.value) == 15, "XOR failed"

    # Shift left: 1010 << 1 = 0100 (4-bit result)
    op.value = 5
    await Timer(10, unit="ns")

    assert int(dut.result.value) == 4, "Shift-left failed"

    # Shift right: 1010 >> 1 = 0101
    op.value = 6
    await Timer(10, unit="ns")

    assert int(dut.result.value) == 5, "Shift-right failed"


     # Overflow: 15 + 1 = 16
    a.value = 15
    b.value = 1
    op.value = 0
    await Timer(10, unit="ns")

    assert int(dut.result.value) == 0, "Overflow result failed"
    assert int(dut.carry.value) == 1, "Overflow carry failed"
    assert int(dut.zero.value) == 1, "Overflow zero flag failed"

    dut._log.info("All ALU test are passed")


