`timescale 1ns/1ps


module alu(
    input logic [3:0] a,b,
    input logic [2:0] op,
    output logic [3:0] result,
    output logic carry,
    output logic zero
);
    logic [4:0] temp;
    always_comb begin
        case(op) 

            3'b000: begin
                temp = {1'b0,a} + {1'b0,b};
                result = temp[3:0];
                carry = temp[4];
            end
            3'b001: begin
                temp = {1'b0,a} - {1'b0,b};
                result = temp[3:0];
                carry = temp[4];
            end
            3'b010: result = a&b;
            3'b011: result = a|b;
            3'b100: result = a^b;
            3'b101: result = a << 1;
            3'b110: result = a >> 1;

            default : begin
                result = 4'b000;
                carry = 1'b0;
            end
        endcase

        zero = (result == 4'b0000);

    end

endmodule
