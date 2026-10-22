`timescale 1ns/1ps

module rr_arbiter4(
    input logic clk,rst_n,
    input logic [3:0] req,
    output logic [3:0] gnt
);

    logic [3:0] present_grant;
    logic [3:0] next_grant;
    logic [3:0] selected_req;
    

    logic [3:0] mask; //for next output next_grant
    logic [3:0] mask_combo;


    always_comb begin
        casez (present_grant)
            4'b0001 : mask = 4'b1110;
            4'b0010 : mask = 4'b1100;
            4'b0100 : mask = 4'b1000;
            4'b1000 : mask = 4'b0000;
            default : mask = 4'b0000;
        endcase
    end

    assign mask_combo = mask & req;

    always_comb begin
        if (mask_combo != 4'b0000)
            selected_req = mask_combo;
        else
            selected_req = req;
    end

    always_comb begin
        casez (selected_req) 
            4'b0000 : next_grant = 4'b0000;
            4'b???1 : next_grant = 4'b0001;
            4'b??10 : next_grant = 4'b0010;
            4'b?100 : next_grant = 4'b0100;
            4'b1000 : next_grant = 4'b1000;
            default : next_grant = 4'b0000;
        endcase

    end

    always_ff @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            present_grant <= 4'b0000;
            gnt <= 4'b0000;
        end
        else begin
            gnt <= next_grant;

            if(next_grant != 4'b0000) begin
                present_grant <= next_grant;
            end
        end
    end



    

endmodule

