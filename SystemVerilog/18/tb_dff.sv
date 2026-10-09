`timescale 1ns/1ps

module tb_dff();

    logic clk;
    logic rst_n;
    logic en;
    logic d;
    logic q_async;
    logic q_sync;


    d_ff_async tb_dff_async(
        .clk(clk),
        .d(d),
        .rst_n(rst_n),
        .en(en),
        .q(q_async)
    );

    d_ff_sync tb_dff_sync(
        .clk(clk),
        .d(d),
        .rst_n(rst_n),
        .en(en),
        .q(q_sync)
    );

    always #5 clk = ~clk;

    
    
    task apply_input(
        input logic reset,
        input logic enable,
        input logic data 
    );
    begin

        rst_n = reset;
        en = enable;
        d = data;
        #10;
        
        $display("%4t   |   %b       |     %b    |  %b      |   %b        |    %b     ",clk,rst_n,en,d,q_async,q_sync);
    end

    endtask

    task reset_between_edges();

    begin
        rst_n = 1;
        en = 1;
        d = 1;
        #7;
        rst_n = 0;
        #2;
        $display("%4t   |   %b       |     %b    |  %b      |   %b     |    %b",$time,rst_n,en,d,q_async,q_sync);
        #2;

        rst_n = 1;
    end
    endtask


    

    initial begin



        clk = 0; rst_n = 1; en = 0; d = 0;

        $dumpfile("dff.vcd");
        $dumpvars(0,tb_dff);

        $display("=================================================================");
        $display("              D FLIP-FLOP TESTBENCH");
        $display("=================================================================");
        $display("Clk   |   Reset    |  Enable   |  Input   |   Async  |   Sync    ");
        $display("-----------------------------------------------------------------");
    
    
    apply_input(0,0,0);
    apply_input(0,0,1);
    apply_input(0,1,0);
    apply_input(0,1,1);
    apply_input(1,0,0);
    apply_input(1,0,1);
    apply_input(1,1,0);
    apply_input(1,1,1);


    reset_between_edges();




    $finish;


    end

endmodule