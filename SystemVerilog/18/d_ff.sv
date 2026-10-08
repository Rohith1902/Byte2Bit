`timescale 1ns/1ps

// ============================================================
// Asynchronous Reset D Flip-Flop
// ============================================================
module d_ff_async(
    input logic clk,
    input logic rst_n,
    input logic d,
    input logic en,
    output logic q
);

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 0;
        else if (en)
            q <= d;
    end

endmodule


// ============================================================
// Synchronous Reset D Flip-Flop
// ============================================================
module d_ff_sync(
    input logic clk,
    input logic rst_n,
    input logic d,
    input logic en,
    output logic q
);

    always_ff @(posedge clk) begin
        if (!rst_n)
            q <= 0;
        else if (en)
            q <= d;
    end

endmodule


// ============================================================
// Top Module for OpenLane
// ============================================================
module d_ff(
    input logic clk,
    input logic rst_n,
    input logic d,
    input logic en,
    output logic q_async,
    output logic q_sync
);

    d_ff_async u_async (
        .clk(clk),
        .rst_n(rst_n),
        .d(d),
        .en(en),
        .q(q_async)
    );

    d_ff_sync u_sync (
        .clk(clk),
        .rst_n(rst_n),
        .d(d),
        .en(en),
        .q(q_sync)
    );

endmodule
