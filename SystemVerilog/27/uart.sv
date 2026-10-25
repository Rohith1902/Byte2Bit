`timescale 1ns/1ps


module uart #(
    parameter CLKS_PER_BIT = 16
)(
    input logic clk,rst_n,
    input logic start,
    input logic [7:0] data,
    output logic tx,
    output logic busy
);
    

    typedef enum logic [1:0]{
        IDLE,
        START,
        DATA,
        STOP
    } state_t;

    state_t state;

    logic [$clog2(CLKS_PER_BIT)-1:0] clk_count;
    logic [2:0] bit_count;
    logic [7:0] data_reg;

    always_ff @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            state <= IDLE;
            tx = 1'b0;
            busy = 1'b0;
            clk_count <= '0;
            bit_count <= '0;
            data_reg <= '0;
        end
        else begin
            case(state)
                IDLE : begin
                    tx <= 1'b1;
                    busy <= 1'b0;
                    clk_count <= '0;
                    bit_count <= '0;

                    if(start) begin   // if start bit 0 statrs

                        data_reg <= data;
                        state <= START;
                        tx <= 1'b0;
                        busy <= 1'b1;
                    end 

                end

                START : begin
                    if(clk_count == CLKS_PER_BIT - 1 ) begin
                        clk_count <= '0;
                        bit_count <= '0;
                        state <= DATA;
                        tx <= data_reg[0];
                    end

                    else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end

                DATA : begin

                    if(clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= '0;

                        if(bit_count == 3'd7) begin
                            state <= STOP;
                            tx <= 1'b1;
                        
                        end

                        else begin

                            bit_count <= bit_count + 1;
                            tx <= data_reg[bit_count + 1'b1];
                        end
                    end 

                    else begin
                        clk_count <= clk_count + 1'b1;
                    end

                end

                STOP : begin

                    if(clk_count == CLKS_PER_BIT - 1) begin

                        clk_count <= 0;
                        state <= IDLE;
                        tx <= 1'b1;
                        busy <= 1'b0;

                    end

                    else begin

                        clk_count <= clk_count + 1'b1;

                    end



                end

                default : begin
                    state <= IDLE;
                    tx <= 1'b1;
                    busy <= 1'b0;
                    clk_count <= '0;
                    bit_count <= '0;
                end
            endcase

        end
                   


    end


endmodule