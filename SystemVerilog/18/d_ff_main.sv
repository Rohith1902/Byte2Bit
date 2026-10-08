`timescale 1ns/1ps


module d_ff_async(
    input logic clk,rst_n,
    input logic d,
    input logic en,
    output logic q
);

    always_ff @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            q <= 0;
        end
        else if (en) begin
            q <= d;
        end
    end

endmodule

module d_ff_sync(
    input logic clk,rst_n,
    input logic d,
    input logic en,
    output logic q
);

    always_ff @(posedge clk) begin
        if(!rst_n) begin
            q <= 0;
        end
        else if (en) begin
            q <= d;
        end
    end



endmodule