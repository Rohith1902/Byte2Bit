//Serial In / Parralel out ------> Shift registers


`timescale 1ns/1ps

module shift_reg(
    input logic clk,
    input logic rst_n,
    input logic en,
    input logic serial_in,
    input logic load,
    input logic [3:0] data_in,
    output logic [3:0] q

);

    always_ff @(posedge clk or negedge rst_n)  begin
        if(!rst_n) begin
            q <= 4'b0000;
        end
        else if(load) begin
            q <= data_in;
        end
        else if(en) begin
            q <= {q[2:0],serial_in};
        end

    end

endmodule
