module sum(
    input logic [7:0] arr [0:7],
    output logic [10:0] total
);

always_comb begin
    total = '0;
    for(int i =0;i < 8;i++) begin
        total += arr[i];
    end
end



endmodule