import cocotb
from cocotb.triggers import Timer

@cocotb.test()

async def test_barrel_shifter(dut):

    test_cases = [
    # data,  shift, dir, expected

    (0b1011, 0, 0, 0b1011),
    (0b1011, 1, 0, 0b0101),
    (0b1011, 2, 0, 0b0010),
    (0b1011, 3, 0, 0b0001),

    (0b1011, 0, 1, 0b1011),
    (0b1011, 1, 1, 0b0110),
    (0b1011, 2, 1, 0b1100),
    (0b1011, 3, 1, 0b1000),
]

    for data,shift,direction,expected in test_cases:
        dut.data_in.value = data
        dut.shift_amt.value = shift
        dut.dir.value = direction

        await Timer(10, unit="ns")

        result = dut.data_out.value

        print(
            f"data={data:04b} "
            f"shift={shift} "
            f"dir={direction} "
            f"output={str(result)} "
            f"expected={expected:04b}"
        )

        assert result == expected

