module mux_tb();

    logic in0,in1,in2,in3;
    logic [1:0] sel;
    logic y;

    mux4 dut(
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .sel(sel),
        .y(y)
    );


    initial begin 

        in0 = 0;
        in1 = 1;
        in2 = 0;
        in3 = 1;

        sel = 2'b00;
        #10;
        $display("sel = %b |  y = %b",sel,y);

        sel = 2'b01;
        #10;
        $display("sel = %b |  y = %b",sel,y);

        sel = 2'b10;
        #10;
        $display("sel = %b |  y = %b",sel,y);

        sel = 2'b11;
        #10;
        $display("sel = %b |  y = %b",sel,y);


        


        $display("===========================");


        in0 = 0;
        in1 = 0;
        in2 = 1;
        in3 = 1;

        sel = 2'b00;
        #10;
        $display("sel = %b |  y = %b",sel,y);

        sel = 2'b01;
        #10;
        $display("sel = %b |  y = %b",sel,y);

        sel = 2'b10;
        #10;
        $display("sel = %b |  y = %b",sel,y);

        sel = 2'b11;
        #10;
        $display("sel = %b |  y = %b",sel,y);

        $finish;

    end 

endmodule
