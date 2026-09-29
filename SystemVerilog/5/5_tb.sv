module palin_tb();

    logic [7:0] arr [0:7];
    logic pal;

    // DUT
    palin dut (
        .arr(arr),
        .pal(pal)
    );

    // Test task
    task test_palin(input logic expected);
        begin
            #10;

            $display("Input    = %0d %0d %0d %0d %0d %0d %0d %0d",
                     arr[0], arr[1], arr[2], arr[3],
                     arr[4], arr[5], arr[6], arr[7]);

            $display("Expected = %b", expected);
            $display("Actual   = %b", pal);

            if (pal == expected)
                $display("PASS");
            else
                $display("FAIL");

            $display("----------------------------");
        end
    endtask

    initial begin

        // Test 1: Palindrome
        arr = '{1, 2, 3, 4, 4, 3, 2, 1};
        test_palin(1'b1);

        // Test 2: Not palindrome
        arr = '{2, 3, 4, 4, 3, 2, 1, 9};
        test_palin(1'b0);

        // Test 3: Not palindrome
        arr = '{1, 2, 3, 4, 3, 2, 9, 2};
        test_palin(1'b0);

        // Test 4: Not palindrome
        arr = '{1, 2, 3, 4, 4, 3, 1, 5};
        test_palin(1'b0);

        // Test 5: Not palindrome
        arr = '{0, 1, 2, 3, 4, 3, 2, 1};
        test_palin(1'b0);

        $finish;
    end

endmodule