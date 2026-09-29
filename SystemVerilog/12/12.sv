module encoder_4x2(
    input logic [3:0] req,
    output logic [1:0] grant_num,
    output logic logic_valid
);

    always_comb begin

        grant_num = 2'b00;
        logic_valid = 1'b0;

        if(req[3])begin
            grant_num = 2'b11;
            logic_valid = 1'b1;
        end

        else if(req[2])begin
            grant_num = 2'b10;
            logic_valid = 1'b1;
        end

        else if(req[1])begin
            grant_num = 2'b01;
            logic_valid = 1'b1;
        end

        else if(req[0])begin
            grant_num = 2'b00;
            logic_valid = 1'b1;
        end
    end
endmodule


module encoder_8x3(
    input logic [7:0] req,
    output logic [2:0] grant_num,
    output logic logic_valid
);
    logic low_valid;
    logic high_valid;

    logic [1:0] high_grant;
    logic [1:0] low_grant;

    encoder_4x2 enco_low(
        .req(req[3:0]),
        .grant_num(low_grant),
        .logic_valid(low_valid)
    );

    encoder_4x2 enco_high(
        .req(req[7:4]),
        .grant_num(high_grant),
        .logic_valid(high_valid)
    );

    always_comb begin 

        if(high_valid) begin
            grant_num = {1'b1, high_grant};
            logic_valid = 1'b1;
            end
        else if(low_valid) begin    
            grant_num = {1'b0, low_grant};
            logic_valid = 1'b1;
            end
        else begin
            grant_num = 3'b000;
            logic_valid = 1'b0;
            end
        end
endmodule

