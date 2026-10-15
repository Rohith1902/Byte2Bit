`timescale 1ns/1ps

module tb_alu();

    logic [3:0]a,b;
    logic [2:0] op;
    logic [3:0] result;
    logic carry;
    logic zero;

    alu dut(
        .a(a),
        .b(b),
        .result(result),
        .carry(carry),
        .zero(zero),
        .op(op)
    );


    initial begin

        a = 4'b1010; //10
        b = 4'b0101; //5
        op = 3'b000;

        $display("Test Started");
        #10;
        $display("Addition of a = 10 + b = 5 : Result = %b   %d  carry = %b  zero = %b  status = %s",result,result,carry,zero,(result == 4'b1111)?"PASS":"FAIL");        
        op = 3'b001;
        #10;
        $display("Subtraction of a = 10 - b = 5 : Result = %b   %d  carry = %b  zero = %b  status = %s",result,result,carry,zero,(result == 4'b0101)?"PASS":"FAIL");
        #10;
        $display("AND of a = 10 - b = 5 : Result = %b   %d  carry = %b  zero = %b  status = %s",result,result,carry,zero,(result == 4'b0101)?"PASS":"FAIL");
        $display("OR of a = 10 - b = 5 : Result = %b   %d  carry = %b  zero = %b  status = %s",result,result,carry,zero,(result == 4'b0101)?"PASS":"FAIL");
        $display("XOR of a = 10 - b = 5 : Result = %b   %d  carry = %b  zero = %b  status = %s",result,result,carry,zero,(result == 4'b0101)?"PASS":"FAIL");
        $display("Left shift of a = 10 - b = 5 : Result = %b   %d  carry = %b  zero = %b  status = %s",result,result,carry,zero,(result == 4'b0101)?"PASS":"FAIL");
        $display("Right shift of a = 10 - b = 5 : Result = %b   %d  carry = %b  zero = %b  status = %s",result,result,carry,zero,(result == 4'b0101)?"PASS":"FAIL");


    end

endmodule

