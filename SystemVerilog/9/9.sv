module target(
    input logic [7:0] arr [7:0],
    input logic [7:0] target,
    output logic [3:0] index,
    output logic found
);

    always_comb begin 
        index = 4'b0000;
        found = 1'b0;

        for(int i =0;i<8;i++) begin
            if(!found arr[i] == target) begin
                index = i;
                found = 1'b1;
            end
        end
    end 

        