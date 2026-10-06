//Testbench for barrel barrel_shifter

`timescale 1ns/1ps

module tb_barrel_shifter;

    logic [3:0] data_in;
    logic [1:0] shift_amt;
    logic dir;
    logic [3:0] data_out;

    
    barrel_shifter dut(
        .data_in(data_in),
        .shift_amt(shift_amt),
        .dir(dir),
        .data_out(data_out)
    );

    initial begin 

        $dumpfile("barrel_shifter.vcd");
        $dumpvars(0,tb_barrel_shifter);

        
        data_in = 4'b1011;
        shift_amt = 1;
        dir = 1;
        #10;
        $display("data_in = %b  |  shift_amt = %b  |  dir = %b  |  data_out = %b   ",data_in,shift_amt,dir,data_out);

        $finish;




    end
endmodule

