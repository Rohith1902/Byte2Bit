`timescale 1ns/1ps


module tb_decoder_3x8();

    logic [2:0] sel;
    logic en;
    logic [7:0] y;

    decoder_3x8 dut(
        .sel(sel),
        .en(en),
        .y(y)
    );

    task automatic cases(input logic enable);
        begin
            en = enable;
            
            for (int i = 0;i<8;i++) begin
                sel = i;
                #10;
                $display("  %b     |         %b          |       %b       ",en,sel,y);
            end
        end
    endtask


    initial begin

    sel = 3'b0;
    en = 0;
    $display("Enable   |    Selecction_Line  |     Output    ");
    #2;
    

    cases(1'b0);
    cases(1'b1);
    
    

    $finish;



    end

endmodule
