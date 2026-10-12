`timescale 1ns/1ps

module piso_4bit(
    input logic clk,rst_n,
    input logic load,
    input logic [3:0] data_in,
    output logic serial_out
);
    logic [3:0] sr;
    always_ff @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            sr <= 4'b0000;
        end
        else if (load) begin
            sr <= data_in;
        end
        else begin
            sr <= {sr[2:0],1'b0};
        end


    end

    assign serial_out = sr[3];

endmodule