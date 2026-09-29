module tb_2;

    logic [7:0] arr [0:7];
    logic [10:0] total;
    logic [10:0] expected;

    sum dut(
        .arr(arr),
        .total(total)
    );

    initial begin 

        arr = '{1,2,3,4,5,6,7,8};
        expected = 36;
 
        #10;

        $display("arr[0] = %0d", arr[0]);
        $display("arr[1] = %0d", arr[1]);        
        $display("arr[2] = %0d", arr[2]);
        $display("arr[3] = %0d", arr[3]);
        $display("arr[4] = %0d", arr[4]);
        $display("arr[5] = %0d", arr[5]);
        $display("arr[6] = %0d", arr[6]);
        $display("arr[7] = %0d", arr[7]);
        $display("sum 1 = %0d",total);


        
        if (total == expected)
            $display("Test 1 is passes : total = %d ",total);
        else
            $display("Test 1 is passes :- total = %d -- expected = %d ",total,expected);
        $finish;

    end 

endmodule