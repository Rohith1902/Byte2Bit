`timescale 1ns/1ps


module fifo #(
    parameter WIDTH = 8,
    parameter DEPTH = 8
)(
    input logic clk,rst_n,
    input logic push,pop,
    input logic [WIDTH-1:0] data_in,
    output logic [WIDTH-1:0]data_out,
    output logic full,empty,
    output logic [$clog2(DEPTH):0] count
);
    logic [WIDTH-1:0] mem [0:DEPTH-1];//nemory

    //Read and write pointers

    logic [$clog2(DEPTH)-1:0] wr_ptr;
    logic [$clog2(DEPTH)-1:0] rd_ptr;

    logic do_push,do_pop;

    assign do_push = push && !full;
    assign do_pop = pop && !empty;

    always @(posedge clk or negedge rst_n) begin

        if(!rst_n) begin
            data_out <= '0;
            rd_ptr <= '0;
            wr_ptr <= '0;
            count <= '0;
        end
        else begin 

            //push
            if (do_push) begin
                mem[wr_ptr] <= data_in;
                wr_ptr <= wr_ptr + 1'b1;
            end

            if(do_pop) begin
                data_out <= mem[rd_ptr];
                rd_ptr <= rd_ptr + 1'b1;
            end


            case({do_push,do_pop})   
                2'b10 : count <= count + 1'b1;
                2'b01 : count <= count - 1'b1;
                default : count <= count;
            endcase
        
        end


    end

    assign empty = (count == 0);
    assign full = (count == DEPTH);

endmodule