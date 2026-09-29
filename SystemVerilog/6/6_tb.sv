module tb_target();

    logic [7:0] arr [0:7];

    target dut(
        .arr(arr)
    );

    task check(input logic [7:0] target_value,
                input int expected);

            begin
                dut.target = target_value;
                #10;

                $display("Input       =  %0d %0d %0d %0d %0d %0d %0d %0d",
                
                arr[0], arr[1], arr[2], arr[3],
                arr[4], arr[5], arr[6], arr[7]);
                $display("Target   : %0d ",dut.target);
                $display("Expected : %0d",expected);
                $display("Actual   : %0d",dut.count);

                if (dut.count == expected)
                    $display("Pass");
                else
                    $display("Fail");

                $display("------------------------------------");

            end
    endtask

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, tb_target);

        
        // Test 1: 3 appears twice
        arr = '{1, 2, 3, 4, 55, 6, 7, 3};
        check(3, 2);

        // Test 2: 55 appears once
        arr = '{1, 2, 3, 4, 55, 6, 7, 3};
        check(55, 1);

        // Test 3: 10 doesn't appear
        arr = '{1, 2, 3, 4, 55, 6, 7, 3};
        check(10, 0);

        // Test 4: 1 appears once
        arr = '{1, 2, 3, 4, 55, 6, 7, 3};
        check(1, 1);

        // Test 5: 7 appears once
        arr = '{1, 2, 3, 4, 55, 6, 7, 3};
        check(7, 1);

        $finish;
    end

endmodule