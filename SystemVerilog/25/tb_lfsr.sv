`timescale 1ns/1ps


module tb_lfst();

    logic clk;
    logic rst_n;
    logic [3:0] q;

    lfsr dut(
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        rst_n = 0;
        #10;
        rst_n = 1;
        clk  = 1;
        #20;
        $display("Clock    |    LFSR    ");
        #10;
        $monitor("  %4t    |      %b    ",$time,q);
        #80;
        $finish;


    end

endmodule