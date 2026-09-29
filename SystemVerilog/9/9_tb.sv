module tb_targ();

    logic [7:0] arr [0:7];

    target dut(
        .arr(arr)
    )