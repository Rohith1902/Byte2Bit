`timescale 1ns/1ps



module apb(
    input logic pclk,
    input logic preset,
    input logic psel,
    input logic penable,
    input logic pwrite,
    input logic [7:0] paddr,
    input logic [31:0]pwdata ,
    output logic pready,
    output logic pslverr,
    output logic [31:0] prdata
);

    logic [31:0] ctrl_reg;
    logic [31:0] status_reg;
    logic [31:0] data_reg;
    logic [31:0] scratch_reg;

    logic data_wait_seen;


    localparam logic [7:0] CTRL = 8'h00;
    localparam logic [7:0] STATUS = 8'h04;
    localparam logic [7:0] DATA = 8'h08;
    localparam logic [7:0] SCRATCH = 8'h0c;




    always_comb  begin
        
        prdata = 32'h0000;
        pready = 1'b1;
        pslverr = 1'b0;

        if(psel && penable) begin

            if(paddr == DATA && !data_wait_seen) 
                pready = 1'b0;
            
            // Mux
            if(!pwrite) begin
                case(paddr)
                    CTRL : prdata = ctrl_reg;
                    STATUS : prdata = status_reg;
                    DATA : prdata = data_reg;
                    SCRATCH : prdata = scratch_reg;

                    default : begin
                        prdata = 32'h0;
                        pslverr = 1'b1;
                    end
                endcase
            end

            if(pwrite && paddr == STATUS)
                pslverr = 1'b1;
            
            if(pwrite && paddr != CTRL &&
                paddr != STATUS &&
                paddr != DATA &&
                paddr != SCRATCH)
                pslverr = 1'b1;

        end
    end

    always_ff @(posedge pclk or negedge preset) begin

        if(!preset) begin
            ctrl_reg <= 32'h0;
            status_reg <= 32'h0;
            data_reg <= 32'h0;
            scratch_reg <= 32'h0;
            data_wait_seen <= 1'b0;
        end

        else begin
            if(psel && penable && paddr == DATA && !data_wait_seen)
                data_wait_seen <= 1'b1;
            else if (psel && penable && 
                paddr == DATA && pready)
                data_wait_seen <= 1'b0;
            else if (!psel || !penable)
                data_wait_seen <= 1'b0;
            //Decoder
            if(psel && penable && pready && pwrite) begin
                case(paddr)
                    CTRL: ctrl_reg <= pwdata;
                    STATUS : ;
                    DATA : data_reg <= pwdata;
                    SCRATCH : scratch_reg <= pwdata;
                endcase
            end


        end
    end

endmodule
