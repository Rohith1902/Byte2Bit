`timescale 1ns/1ps


module tb_fifo;


    localparam DEPTH = 8;
    localparam WIDTH = 8;
    logic clk;
    logic rst_n;
    logic push;
    logic pop;
    logic [WIDTH-1:0] data_in;
    logic [WIDTH-1:0] data_out;
    logic full;
    logic empty;
    logic [$clog2(DEPTH):0] count;

    fifo #(
        .WIDTH(WIDTH),
        .DEPTH(DEPTH)
    )dut(
        .clk(clk),
        .rst_n(rst_n),
        .push(push),
        .pop(pop),
        .data_in(data_in),
        .data_out(data_out),
        .full(full),
        .empty(empty),
        .count(count)

    );
    initial clk = 0;
    always #5 clk = ~clk;

    integer decision;
    integer check_full;

    task automatic push_task();
        @(negedge clk);
        push = 1;
        pop = 0;
        data_in = $urandom_range(0,255);

        @(posedge clk);
        #1;

        $display("PUSH : Data = %0h  |   count = %0d   ",data_in,count);

        push = 0;
    endtask

    task automatic pop_task();
        @(negedge clk);
        push = 0;
        pop = 1;
        data_in = $urandom_range(0,255);

        @(posedge clk);
        #1;

        $display("POP : Data = %0h  |   count = %0d   ",data_out,count);

        pop = 0;
    endtask


    initial begin

        rst_n = 0;
        push = 0;
        pop = 0;
        
        data_in = 0;
        repeat(2) @(posedge clk);
        #10;
        rst_n = 1;
        #10;
        $display("PUSH OPERATION");
        $display("Write Pointer : %b   |  Read Pointer : %b\n",dut.wr_ptr,dut.rd_ptr);
        $display("Index  |  Data stored  |  is full  | is empty   ");
        push = 0;
        pop = 0;
        for(int i = 0; i<DEPTH; i++) begin
            @(negedge clk);
            push = 1;
            data_in = i;
            @(posedge clk);
            #1;
            $display(" %0d    |    %h   |   %b    |   %b  |  %0d  ",i,data_in
            ,full,empty,count);
            //$display("Write Pointer : %b   |  Read Pointer : %b\n",dut.wr_ptr,dut.rd_ptr);

        end
        $display("Write Pointer : %b   |  Read Pointer : %b\n",dut.wr_ptr,dut.rd_ptr);
        
        
        
        $display("POP OPERATION");
        
        $display("Write Pointer : %b   |  Read Pointer : %b\n",dut.wr_ptr,dut.rd_ptr);
        $display("Index  |  Data stored  |  is full  | is empty   ");
        
        
        @(negedge clk);
        push = 0;
        pop = 1;
        
        for(int i = 0; i<DEPTH; i++) begin
            
        
            @(posedge clk);
            #1;
            
            $display(" %0d    |    %h   |   %b    |   %b   |   %0d    ",i,data_out,full,empty,count);
        end
        pop = 0;
        $display("Write Pointer : %b   |  Read Pointer : %b\n",dut.wr_ptr,dut.rd_ptr);

        
        //Random checking

        $display("Random Checking");
        @(negedge clk);
        push = 1;
        data_in = $urandom_range(0,255);
        $display("Data   |    count  ");
        $display("   %h   |   %0d    ",data_in,count);

        

        $display("Random push pop ");
        check_full = 0;
        while(!full) begin
            decision = $urandom_range(0,1);
            check_full = check_full + 1;
            if(decision) begin
                push_task();
            end
            else
                pop_task();
            if (check_full == 100) begin
                $display("Queue didn't fill ");
                break;
            end
                
        end
        
 
        $finish;


    end

endmodule    