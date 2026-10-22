`timescale 1ns/1ps

module tb_rr_arbiter4;

    logic clk;
    logic rst_n;
    logic [3:0] req;
    logic [3:0] gnt;
    

    rr_arbiter4 dut(
        .clk(clk),
        .rst_n(rst_n),
        .req(req),
        .gnt(gnt)
    );

    task automatic check(
        input logic [3:0] request_value,
        input logic [3:0] expected_gnt
    );
        begin
            @(negedge clk);
            req = request_value;

            @(posedge clk);
            #1;

            req = request_value;
            
            if(gnt != expected_gnt) begin
                $display("FAIL : time = %0t     |  req = %b    |  expected = %b    |  actual = %b   ",$time,request_value,expected_gnt,gnt);
            end
            else begin
                $display("PASS : time = %0t     |  req = %b    |  expected = %b    |  actual = %b   ",$time,request_value,expected_gnt,gnt);
            end
        end
            
    endtask

    always #5 clk = ~clk;

    initial begin
        rst_n = 0;
        clk = 0;
        repeat (2) @(negedge clk);
        @(posedge clk)
        rst_n = 1;

        // Basic test cases
        check(4'b0000, 4'b0000);

        check(4'b0001, 4'b0001);
        check(4'b0010, 4'b0010);
        check(4'b0100, 4'b0100);
        check(4'b1000, 4'b1000);

        // All requesters continuously requesting
        check(4'b1111, 4'b0001);
        check(4'b1111, 4'b0010);
        check(4'b1111, 4'b0100);
        check(4'b1111, 4'b1000);
        check(4'b1111, 4'b0001);

        // No requests: registered grant must clear
        check(4'b0000, 4'b0000);

        $display("Testbench completed.");



        $finish;
        


    end


endmodule