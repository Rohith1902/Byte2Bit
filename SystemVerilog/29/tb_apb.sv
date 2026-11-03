`timescale 1ns/1ps

module tb_apb();

    logic pclk;
    logic preset;
    logic psel;
    logic penable;
    logic pwrite;
    logic [7:0] paddr;
    logic [31:0]pwdata ;
    logic pready;
    logic pslverr;
    logic [31:0] prdata;
    logic [31:0] expected;

    apb dut(
        .pclk(pclk),
        .preset(preset),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .paddr(paddr),
        .pwdata(pwdata),
        .pready(pready),
        .pslverr(pslverr),
        .prdata(prdata)
    );

    taks automatic apb_reset();
        begin
            preset = 0;

            penable = 1'b0;
            psel = 1'b0;
            pwrite = 1'b0;
            paddr = 8'h00;
            pwdata = 32'h00;

            ref_model[0] = 32'h0;
            ref_model[1] = 32'h0;
            ref_model[2] = 32'h0;
            ref_model[3] = 32'h0;

            @(negedge clk);

            repeat(2) @(negedge pclk);

            preset = 1'b1;

            @(negedge pclk);

        end
    endtask

    task automatic apb_write(
        input logic [7:0] addr,
        input logic [31:0] data
    );
        begin
            psel = 0;
            penable = 0;
            pwrite = 0;

            @(negedge pclk) 

            //setup phase

            psel = 1'b1;
            penable = 1'b0;
            pwrite = 1'b1;
            paddr = addr;
            pwdata = data;

            @(negedge pclk);

            //Access phase

            penable = 1'b1;


            //wait until slave is ready

            do begin
                @(negedge pclk);
            end while (!pready);

            if(pslverr)
                $display("[WRITE ERROR] Address : %h Data : %h",addr,data);
            else
                $display("[WRITE SUCCESS] Address : %h Data : %h",addr,data);

            @(negedge pclk);
            psel = 1'b0;
            penable = 1'b0;
            pwrite = 1'b0;
        end
    endtask

    task automatic apb_read(
        input logic [7:0] addr,
        input logic [31:0] expected
    );
        begin

            //IDLE PHASE
            psel = 1'b0;
            penable = 1'b0;
            pwrite = 1'b0;
            

            @(negedge pclk);

            //SETUP PHASE

            psel = 1'b1;
            penable = 1'b0;
            pwrite = 1'b0;
            paddr = addr;

            @(negedge pclk);

            //ACCESS PHASE

            penable = 1'b1;

            // WAIT FOR PREADY
            do begin
                @(posedge pclk);
            end while (!pready);

            

            if(prdata === expected)
                $display("[WRITE SUCCESS] Data : %h Expected : %h",prdata,expected);
            else
                $display("[WRITE ERROR] Data : %h Expected : %h",prdata,expected);
            
            @(negedge pclk);
            
            psel = 1'b0;
            penable = 1'b0;


        end
    endtask


        

endmodule




