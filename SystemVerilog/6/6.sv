module target(
    input logic [7:0] arr [0:7]
);
    logic [7:0] target;
    int count ;

    always_comb begin 
        
        count = 0;
      
        for (int i = 0;i<8;i++) begin
            if(arr[i] == target)
                count += 1;
        end

    end

endmodule