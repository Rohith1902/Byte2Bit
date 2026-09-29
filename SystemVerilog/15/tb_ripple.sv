`timescale 1ns/1ps

module tb_ripple;

logic [3:0] a,b,sum;
logic cin,cout;

ripple_carry dut (.*);

initial begin
    //case 1
    a = 4'd5;
    b = 4'd2;
    cin = 0;
    #10;
    $display("A : %d  B : %d  C : %b  =  SUM : %d  |  CARRY : %b ",a,b,cin,sum,cout);
    #10;
    if (sum == 4'd7)begin
        $display("PASS");
    end
    else begin
        $display("FAIL");
    end

    //case 2
    a = 4'd5;
    b = 4'd5;
    cin = 1;
    #10;
    $display("A : %d  B : %d  C : %b  =  SUM : %d  |  CARRY : %b ",a,b,cin,sum,cout);
    #10;
    if (sum == 4'd12)begin
        $display("PASS");
    end
    else begin
        $display("FAIL");
    end

    $finish;


end

endmodule



