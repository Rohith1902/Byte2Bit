`timescale 1ns/1ps


module tb_shift_reg();

    logic clk;
    logic rst_n;
    logic en;
    logic serial_in;
    logic [3:0] q;
    logic [3:0] data_in;
    logic load;

    shift_reg dut(
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .serial_in(serial_in),
        .q(q),
        .data_in(data_in),
        .load(load)
    );

    always #5 clk = ~clk;

    initial begin
        $display("=================RESET=======================");
        clk = 0;
        rst_n = 0;
        en = 0;
        serial_in = 0;
        #5;
        data_in = 4'b1111;
        load = 0;
        #2;
        $display("q = %b   |   Serial In  =  %b ",q,serial_in);
        
        
        $display("=================SERIAL_IN=======================");
        #5;
        rst_n = 1;
        load = 1;
        #2;
        $display("q = %b   |   Serial In  =  %b ",q,serial_in);
        
        
        $display("=================LOAD=======================");

        load = 0;
        en = 1;
        serial_in = 1;
        #10;
        $display("q = %b   |   Serial In  =  %b ",q,serial_in);

       
        $display("=================DATA_IN=======================");


        load =1;
        data_in = 4'b1010;
        #10;
        $display("q = %b   |   Serial In  =  %b ",q,serial_in);


        $display("=================SERIAL_IN=======================");


        load = 0;
        en = 1;
        serial_in = 0;
        #10;
        $display("q = %b   |   Serial In  =  %b ",q,serial_in);


        $finish;










    end


endmodule