module tb_updown();

    logic clk;
    logic reset;
    logic updown_c;
    logic enable;
    logic [3:0] count;

    updown dut(
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .updown_c(updown_c),
        .count(count)
    );

    initial begin
        clk =0;
        forever #5 clk = ~clk;

    end 


    // Test


    initial begin 



        $dumpfile("wave.vcd");
        $dumpvars(0, tb_updown);

        
        reset = 0;
        enable = 0;
        updown_c = 0;
        $display("RESET: count = %d", count);

        #12;
        reset = 1;
        #3;
        enable = 1;
        updown_c = 1;

        #40;

        updown_c = 0;

        #30;

        enable = 0;

        #20;

        enable = 1;
        updown_c = 1;

        #30;

        $finish;

    end


    initial begin
        $monitor("Time=%0t | reset=%b enable=%b up_down=%b count=%d",
                 $time, reset, enable, updown_c, count);
    end

endmodule
