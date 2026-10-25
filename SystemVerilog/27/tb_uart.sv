`timescale 1ns/1ps

module tb_uart;

    logic clk;
    logic rst_n;
    logic [7:0] data;logic start;

    logic tx;
    logic busy;

    localparam CLKS_PER_BIT = 16;

    uart #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    )dut (
        .clk(clk),
        .rst_n(rst_n),
        .data(data),
        .start(start),
        .tx(tx),
        .busy(busy)
    );
    bit [7:0] rand_num;
    int pass_count = 0;
    int fail_count = 0;
    
    class uart_transaction;
        rand bit [7:0] data;

        constraint c_data{
            data inside {[8'h80:8'hFF]};
        }
    endclass
    uart_transaction tr;
    always #5 clk = ~clk;


    task automatic check(
        input logic [7:0] data_check
        
    );
        begin

            for (int i = 0; i<8 ; i++) begin
                @(negedge clk);
                if(tx !== data_check[i]) begin
                    $error("FAIL : bit[%0d]  ,  expected = %b  , got = %b",i,data_check[i],tx);
                    fail_count++;
                    end 
                else
                    $display("PASS : bit[%0d]  ,  tx = %b",i,tx);
                    pass_count++;
                if (i < 7)
                    repeat(CLKS_PER_BIT) @(negedge clk);
            end

        end
    
    endtask

    task automatic random_test();

        begin
            for(int i = 0;i<10;i++) begin
                rand_num = $urandom_range(255,0);
                $display("Test : %0d   |   Random Byte : %08b",i+1,rand_num);

                wait(busy == 0);
                @(negedge clk);

                data = rand_num;
                start = 1;

                @(negedge clk);
                start = 0;

                wait(busy == 1);
                wait(tx == 0);

                repeat(CLKS_PER_BIT) @(negedge clk);

                check(rand_num);

                wait(busy == 0);

                @(negedge clk);

                
            end


        end
    
    endtask



    initial begin

        tr = new();


        rst_n = 0;
        clk = 0;
        data = 8'h00;
        start = 0;

        #10;

        @(negedge clk);
        rst_n = 1;
        data  = 8'b10110110;
        start = 1;
        @(negedge clk);
        start = 0;

        wait(busy == 1);
        wait(tx == 0);

        repeat (CLKS_PER_BIT) @(negedge clk);
        check(8'b10110110);

        wait(busy == 0);



        #10;
        @(negedge clk);
        $display("=======================");
        $display("RANDOM TEST");

        
        wait(busy == 0);
        @(negedge clk);


        random_test();

        $display("==========================");
        $display("Total Passed : %0d",pass_count);
        $display("Total failed : %0d",fail_count);

        if(fail_count == 0) 
            $display("ALL TESTS PASSED");
        else 
            $fatal(1,"VERIFICATION FAILED");


        

        



        $finish;
        

    end

endmodule