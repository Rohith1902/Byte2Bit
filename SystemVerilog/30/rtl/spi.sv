`timescale 1ns/1ps


module spi #(
    parameter int CLK_DIV = 4
)(
    input logic clk,
    input logic rst_n,
    input logic miso,
    input logic start,
    input logic [7:0] tx_data,
    output logic [7:0]rx_data,
    output logic sclk,
    output logic mosi,
    output logic cs_n,
    output logic busy,
    output logic done
);  
    typedef enum logic [1:0]{
        IDLE = 2'b00,
        TRANSFER = 2'b01,
        FINISH = 2'b10
    }state_t;

    state_t current_state;

    logic [1:0] div_cnt;
    logic [2:0] bit_cnt;
    logic [7:0] tx_shift;
    logic [7:0] rx_shift;



    always_ff @(posedge clk or negedge rst_n) begin

        if(!rst_n) begin

            current_state <= IDLE;
            div_cnt <= 2'b0;
            bit_cnt <= 3'b0;
            rx_data <= 8'h0;
            tx_shift <= 8'h0;
            rx_shift <= 8'h0;
            sclk <= 1'b0;
            mosi <= 1'b0;
            cs_n <= 1'b1;
            busy <= 1'b0;
            done <= 1'b0;
                 

        end

        else begin

            case(current_state)
                IDLE: begin
                    sclk <= 1'b0;
                    cs_n <= 1;
                    busy <= 1'b0;
                    done <= 1'b0;

                    if(start) begin
                        tx_shift <= tx_data;
                        cs_n <= 1'b0;
                        busy <= 1'b1;
                        current_state <= TRANSFER;

                        mosi <= tx_data[7];
                        div_cnt <= 0;
                        bit_cnt <= 0;
                        rx_shift <= 0;
                    end

                end

                TRANSFER : begin

                    if(div_cnt == CLK_DIV-1) begin
                        div_cnt <= 0;
                        sclk <= ~sclk;

                        if(sclk == 1'b0) begin
                            rx_shift <= {rx_shift[6:0],miso};

                            if(bit_cnt == 3'd7) begin
                                bit_cnt <= 0;
                                current_state <= FINISH;
                            end
                            else begin
                                bit_cnt <= bit_cnt + 1;
                            end
                        end
                        else begin
                            tx_shift <= {tx_shift[6:0], 1'b0};
                            mosi <= tx_shift[6];
                        end
                    end
                    else begin
                        div_cnt <= div_cnt + 1;
                    end
                    
                    
                end

                FINISH : begin

                    if(div_cnt == CLK_DIV-1) begin
                        div_cnt <= 0;
                        sclk <= 0;

                        rx_data <= rx_shift;
                        cs_n <= 1'b1;
                        busy <= 0;
                        done <= 1;

                        current_state <= IDLE;
                    end

                    else begin
                        div_cnt <= div_cnt + 1;
                    end


                end
            
            endcase

        end


    end

endmodule