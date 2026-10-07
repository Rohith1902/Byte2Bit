`timescale 1ns/1ps


module tb_johnson_counter();

    logic clk;
    logic rst_n;
    logic [3:0] q;

    johnson_counter dut(
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );
    always #5 clk = ~clk;
    initial begin 
        clk = 0;
        rst_n = 0;

        $monitor("%0t   |   %b   |   %b", $time, clk, q);

        #10;

        rst_n = 1;

        #100;

        $finish;
        
    end

endmodule