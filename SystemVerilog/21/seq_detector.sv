//101 Sequence Detecotor using Moore State Machine

`timescale 1ns/1ps

module seq_detector(
    input logic clk,rst_n,
    input logic din,
    output logic dout
);

    typedef enum logic [1:0] {
        s0,s1,s2,s3
    } state_t;
    state_t ps,ns;
    //Present State - Sequential 
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ps <= s0;
        end
        else 
            ps <= ns;
    end

    //Next State - Combinational

    always_comb begin
        ns = s0;
        case (ps) 
            s0 : begin
                if(din == 1'b0) begin
                    ns = s0;
                end
                else if (din == 1'b1) begin
                    ns = s1;
                end
            end
            s1 : begin
                if(din == 1'b0) begin
                    ns = s2;
                end
                else if (din == 1'b1) begin
                    ns = s1;
                end
            end
            s2 : begin
                if(din == 1'b0) begin
                    ns = s0;
                end
                else if (din == 1'b1) begin
                    ns = s3;
                end
            end
            s3 : begin
                if(din == 1'b0) begin
                    ns = s2;
                end
                else if (din == 1'b1) begin
                    ns = s1;
                end
            end
        endcase
    end

    always_comb begin
        if(ps == s3)
            dout = 1'b1;
        else
            dout = 1'b0;
    end

            
 
    





endmodule