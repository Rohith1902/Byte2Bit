module palin(

    input logic [7:0] arr [0:7],
    output logic pal
);
    always_comb begin 
        pal = 1'b1;

        for (int i=0; i<4;i++)begin
            pal = pal && (arr[i]==arr[7-i]);
        end
    end
    initial begin
    $display("Compiled");
    end
endmodule

