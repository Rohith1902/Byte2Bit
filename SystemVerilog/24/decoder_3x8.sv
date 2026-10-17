`timescale 1ns/1ps


module decoder_3x8(
    input logic [2:0] sel,
    input logic en,
    output logic [7:0] y
);

    always_comb begin
        y = 8'b0;

        if(en) begin
            case (sel)
                3'd0 : y = 8'b00000001;
                3'd1 : y = 8'b00000010;
                3'd2 : y = 8'b00000100;
                3'd3 : y = 8'b00001000;
                3'd4 : y = 8'b00010000;
                3'd5 : y = 8'b00100000;
                3'd6 : y = 8'b01000000;
                3'd7 : y = 8'b10000000;
                default : y = 8'b00000000;
            endcase
        end
    end

endmodule

// Also - y = en ? (8'b1 << sel) : 8'b0;