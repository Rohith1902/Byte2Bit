module mux2(
    input logic a,
    input logic b,
    input logic sel,
    output logic y
);

    
    assign y = sel ? b : a;
   
endmodule

module mux4(
    input logic in0,
    input logic in1,
    input logic in2,
    input logic in3,
    input [1:0] sel,
    output logic y
);

    logic temp0;
    logic temp1;

    mux2 mux_a(
        .a(in0),
        .b(in1),
        .sel(sel[0]),
        .y(temp0)
    );

    mux2 mux_b(
        .a(in2),
        .b(in3),
        .sel(sel[0]),
        .y(temp1)
    );

    mux2 mux_c(
        .a(temp0),
        .b(temp1),
        .sel(sel[1]),
        .y(y)
    );
endmodule