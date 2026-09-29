module tb_4;

    logic [7:0] arr [7:0];
    logic [7:0] second;

    sec dut(
        .arr(arr),
        .second(second)
    );

    task test_case;
        begin
            
            #10;

            //$display("Array = %p", arr);
            $display("Second largest = %0d", second);
            $display("-------------------------");

        end
    endtask

    initial begin
        arr =('{1, 2, 3, 4, 5, 6, 7, 8});
        test_case();
        arr = ('{12,14,16,11,6,7,86,54});
        test_case();
        arr = ('{10, 20, 30, 94, 45, 36, 27, 18});
        test_case();
        $finish;
    end

endmodule
