`timescale 1ns/1ps

module lfsr(
    input logic clk,rst_n,
    output logic [3:0] q
);

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)   
            q <= 4'b0001;   //can't use all bit 0 lfsr struck there
        else 
            q <= {q[2:0], q[3] ^ q[2]};
    end

endmodule