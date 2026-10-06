//A digital circuit that can shift or rotate the binary data according to the number of shift in the shift operation

`timescale 1ns/1ps


module barrel_shifter(
    input logic [3:0] data_in,
    input logic [1:0] shift_amt,
    input logic dir,
    output logic [3:0] data_out
);

    always_comb begin
        if (dir == 1) begin  //shift left

            case (shift_amt)
                0 : data_out = data_in;
                1 : data_out = data_in << 1;
                2 : data_out = data_in << 2;
                3 : data_out = data_in << 3;
            endcase

        end


        else begin

            case (shift_amt)
                0 : data_out = data_in;
                1 : data_out = data_in >> 1;
                2 : data_out = data_in >> 2;
                3 : data_out = data_in >> 3;
            endcase
        end
    end
endmodule