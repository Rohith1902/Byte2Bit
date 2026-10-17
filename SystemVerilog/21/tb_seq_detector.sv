`timescale 1ns/1ps

module tb_seq_detector();

    logic clk;
    logic rst_n;
    logic din;
    logic dout;

    seq_detector dut(
        .clk(clk),
        .rst_n(rst_n),
        .din(din),
        .dout(dout)
    );

    always #5 clk = ~clk;

    function automatic string state(input logic [1:0] state_dec);
        case (state_dec)
            2'b00 : state = "s0";
            2'b01 : state = "s1";
            2'b10 : state = "s2";
            2'b11 : state = "s3";
            default: state = "UNKNOWN";
        endcase
    endfunction

    initial begin 

        clk = 0;
        rst_n = 0;
        din = 0;
        

        $display("  Clock    |    DIN    |   Present_state  |   Next_state  |   DOUT   ");
        #10;
        $display(" %4t     |     %b    |       %s         |     %s        |     %b   ",$time,din,state(dut.ps),state(dut.ns),dout);

        rst_n = 1;
        din = 1;
        #10;
        $display(" %4t     |     %b    |       %s        |     %s       |     %b   ",$time,din,state(dut.ps),state(dut.ns),dout);

        din = 0;
        #10;
        $display(" %4t     |     %b    |       %s         |     %s        |     %b   ",$time,din,state(dut.ps),state(dut.ns),dout);
        
        din = 1;
        #10;
        $display(" %4t     |     %b    |       %s         |     %s        |     %b   ",$time,din,state(dut.ps),state(dut.ns),dout);

        $finish;
    

    end

endmodule
