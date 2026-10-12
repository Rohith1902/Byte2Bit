`timescale 1ns/1ps


module tb_piso_4bit();

    logic clk;
    logic rst_n;
    logic load;
    logic [3:0] data_in;
    logic serial_out;

    piso_4bit dut (
        .clk(clk),
        .rst_n(rst_n),
        .load(load),
        .data_in(data_in),
        .serial_out(serial_out)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        load = 0;
        data_in = 4'b0000;
        $display("=========RESET===========");
        $display("CLOCK     |    RESET     |   LOAD    |   DATA_IN    |   Serial Output");
        #10;
        $display("%4t           %b             %b             %b             %b    ",$time, rst_n, load, data_in, serial_out);      
              //Load data_in
        $display("==========LOAD=========");
        rst_n = 1;
        @(negedge clk);
        load = 1;
        data_in = 4'b1010;
        @(posedge clk);
        #1;
        $display("%4t           %b             %b             %b             %b    ",$time, rst_n, load, data_in, serial_out);

        //Shift data_in
        $display("==========SHIFT=========");
        load = 0;
        repeat(4) begin 
            @(posedge clk);
            #1;
            $display("%4t           %b             %b             %b             %b",$time, rst_n, load, data_in, serial_out);
        end

        $finish;

    end


endmodule